-- ============================================================
-- Superstore Sales Analysis
-- Database: superstore | Table: sales
-- Source: Sample Superstore dataset (Tableau public data)
-- Run superstore_sales.ipynb first to load and clean the data
--
-- Queries (11):
--  1. Total Sales by Category
--  2. Profit by Region
--  3. Top 10 Customers by Revenue
--  4. Monthly Sales Trend
--  5. Top 10 Profitable Products
--  6. Sales by Segment
--  7. Average Profit per Order
--  8. Top 5 Cities by Sales
--  9. Category-wise Profit Margin
-- 10. Most Sold Products by Quantity
-- 11. Regions with Net Loss
-- ============================================================

CREATE DATABASE IF NOT EXISTS superstore;
USE superstore;

CREATE TABLE IF NOT EXISTS sales (
    row_id VARCHAR(50),
    order_id VARCHAR(50),
    order_date DATE,
    ship_date DATE,
    ship_mode VARCHAR(50),
    customer_id VARCHAR(50),
    customer_name VARCHAR(100),
    segment VARCHAR(50),
    country VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    region VARCHAR(50),
    product_id VARCHAR(50),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_name TEXT,
    sales FLOAT,
    quantity INT,
    profit FLOAT
);

-- 1. Total Sales by Category
SELECT category, SUM(sales) AS total_sales
FROM sales
GROUP BY category
ORDER BY total_sales DESC;

-- 2. Profit by Region
SELECT region, SUM(profit) AS total_profit
FROM sales
GROUP BY region
ORDER BY total_profit DESC;

-- 3. Top 10 Customers by Revenue
SELECT customer_name, SUM(sales) AS total_sales
FROM sales
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;

-- 4. Monthly Sales Trend
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(sales) AS total_sales
FROM sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;

-- 5. Top 10 Profitable Products
SELECT product_name, SUM(profit) AS total_profit
FROM sales
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10;

-- 6. Sales by Customer Segment
SELECT segment, SUM(sales) AS total_sales
FROM sales
GROUP BY segment
ORDER BY total_sales DESC;

-- 7. Average Profit per Order
SELECT order_id, AVG(profit) AS avg_profit
FROM sales
GROUP BY order_id
ORDER BY avg_profit DESC;

-- 8. Top 5 Cities by Sales
SELECT city, SUM(sales) AS total_sales
FROM sales
GROUP BY city
ORDER BY total_sales DESC
LIMIT 5;

-- 9. Category-wise Profit Margin
SELECT
    category,
    ROUND(SUM(profit) / SUM(sales) * 100, 2) AS profit_margin_pct
FROM sales
GROUP BY category
ORDER BY profit_margin_pct DESC;

-- 10. Most Sold Products by Quantity
SELECT product_name, SUM(quantity) AS total_quantity
FROM sales
GROUP BY product_name
ORDER BY total_quantity DESC
LIMIT 10;

-- 11. Regions with Net Loss
SELECT region, SUM(profit) AS total_profit
FROM sales
GROUP BY region
HAVING total_profit < 0;
