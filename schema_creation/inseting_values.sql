use bl_db_exercise;

SET GLOBAL local_infile = 1;

select * from user;

select count(*) from orders;
set foreign_key_checks = 0;
LOAD DATA LOCAL INFILE 'C:/Users/ashut/OneDrive/Desktop/BL-db-ecommerce/BL-database/seed_data/users.csv' INTO
TABLE users FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/ashut/OneDrive/Desktop/BL-db-ecommerce/BL-database/seed_data/customer_profiles.csv' INTO
TABLE customer_profiles FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/ashut/OneDrive/Desktop/BL-db-ecommerce/BL-database/seed_data/seller_profiles.csv' INTO
TABLE seller_profiles FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/ashut/OneDrive/Desktop/BL-db-ecommerce/BL-database/seed_data/addresses.csv' INTO
TABLE addresses FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/ashut/OneDrive/Desktop/BL-db-ecommerce/BL-database/seed_data/categories.csv' INTO
TABLE categories FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/ashut/OneDrive/Desktop/BL-db-ecommerce/BL-database/seed_data/brands.csv' INTO
TABLE brands FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/ashut/OneDrive/Desktop/BL-db-ecommerce/BL-database/seed_data/products.csv' INTO
TABLE products FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/ashut/OneDrive/Desktop/BL-db-ecommerce/BL-database/seed_data/product_categories.csv' INTO
TABLE product_categories FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/ashut/OneDrive/Desktop/BL-db-ecommerce/BL-database/seed_data/product_images.csv' INTO
TABLE product_images FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/ashut/OneDrive/Desktop/BL-db-ecommerce/BL-database/seed_data/warehouses.csv' INTO
TABLE warehouses FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/ashut/OneDrive/Desktop/BL-db-ecommerce/BL-database/seed_data/inventory.csv' INTO
TABLE inventory FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/ashut/OneDrive/Desktop/BL-db-ecommerce/BL-database/seed_data/stock_movements.csv' INTO
TABLE stock_movements FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/ashut/OneDrive/Desktop/BL-db-ecommerce/BL-database/seed_data/cart.csv' INTO
TABLE cart FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:\\Users\\ashut\\OneDrive\\Desktop\\BL-db-ecommerce\\BL-database\\seed_data\\orders.csv'
INTO TABLE orders
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(order_id, customer_id, order_status, total_amount, created_at);

LOAD DATA LOCAL INFILE 'C:\\Users\\ashut\\OneDrive\\Desktop\\BL-db-ecommerce\\BL-database\\seed_data\\order_items.csv' INTO
TABLE order_items FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:\\Users\\ashut\\OneDrive\\Desktop\\BL-db-ecommerce\\BL-database\\seed_data\\payments.csv' INTO
TABLE payments FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:\\Users\\ashut\\OneDrive\\Desktop\\BL-db-ecommerce\\BL-database\\seed_data\\payment_transactions.csv' INTO
TABLE payment_transactions FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:\\Users\\ashut\\OneDrive\\Desktop\\BL-db-ecommerce\\BL-database\\seed_data\\invoices.csv' INTO
TABLE invoices FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:\\Users\\ashut\\OneDrive\\Desktop\\BL-db-ecommerce\\BL-database\\seed_data\\coupons.csv' INTO
TABLE coupons FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:\\Users\\ashut\\OneDrive\\Desktop\\BL-db-ecommerce\\BL-database\\seed_data\\coupon_usage.csv' INTO
TABLE coupon_usage FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:\\Users\\ashut\\OneDrive\\Desktop\\BL-db-ecommerce\\BL-database\\seed_data\\reviews.csv' INTO
TABLE reviews FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:\\Users\\ashut\\OneDrive\\Desktop\\BL-db-ecommerce\\BL-database\\seed_data\\ratings.csv' INTO
TABLE ratings FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:\\Users\\ashut\\OneDrive\\Desktop\\BL-db-ecommerce\\BL-database\\seed_data\\returns.csv' INTO
TABLE returns FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:\\Users\\ashut\\OneDrive\\Desktop\\BL-db-ecommerce\\BL-database\\seed_data\\refunds.csv' INTO
TABLE refunds FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;