import mysql.connector
import csv
import sys

# Database connection parameters
db_config = {
    'host': 'localhost',
    'user': 'root',  # Change if needed
    'password': 'root1234',   # Change if needed
    'database': 'bl_db_exercise'
}

# Configuration
csv_file = r'C:/Users/ashut/OneDrive/Desktop/BL-db-ecommerce/BL-database/seed_data/orders.csv'
batch_size = 100  # Load 100 rows at a time
skip_header = True

def load_orders_in_batches():
    try:
        conn = mysql.connector.connect(**db_config)
        cursor = conn.cursor()
        
        # Disable foreign key checks
        cursor.execute("SET FOREIGN_KEY_CHECKS = 0;")
        
        batch = []
        row_count = 0
        batch_count = 0
        
        with open(csv_file, 'r', encoding='utf-8') as f:
            reader = csv.reader(f)
            
            # Skip header if needed
            if skip_header:
                next(reader)
            
            for row in reader:
                if len(row) >= 5:  # Ensure row has enough columns
                    # order_id, customer_id, order_status, total_amount, created_at
                    batch.append(row[:5])
                    row_count += 1
                    
                    # Insert batch when it reaches batch_size
                    if len(batch) >= batch_size:
                        insert_batch(cursor, conn, batch, batch_count)
                        batch_count += 1
                        batch = []
                        print(f"Loaded {row_count} rows...")
            
            # Insert remaining rows
            if batch:
                insert_batch(cursor, conn, batch, batch_count)
                batch_count += 1
        
        # Re-enable foreign key checks
        cursor.execute("SET FOREIGN_KEY_CHECKS = 1;")
        conn.commit()
        cursor.close()
        conn.close()
        
        print(f"\n✓ Successfully loaded {row_count} orders in {batch_count} batches!")
        
    except Exception as e:
        print(f"✗ Error: {str(e)}")
        sys.exit(1)

def insert_batch(cursor, conn, batch, batch_num):
    try:
        # Build INSERT statement
        placeholders = ','.join(['(%s, %s, %s, %s, %s)'] * len(batch))
        
        # Flatten the batch data
        flat_data = []
        for row in batch:
            flat_data.extend(row)
        
        sql = f"""
            INSERT INTO orders (order_id, customer_id, order_status, total_amount, created_at)
            VALUES {placeholders}
        """
        
        cursor.execute(sql, flat_data)
        conn.commit()
        print(f"  Batch {batch_num}: Inserted {len(batch)} rows")
        
    except Exception as e:
        print(f"  ✗ Batch {batch_num} failed: {str(e)}")
        conn.rollback()
        raise

if __name__ == '__main__':
    print("Starting batch load of orders.csv...")
    print(f"Batch size: {batch_size} rows")
    print(f"File: {csv_file}\n")
    
    load_orders_in_batches()
