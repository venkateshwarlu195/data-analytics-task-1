-- 1. Total Sales by Category

SELECT category, SUM(sales) AS total_sales
FROM cleaned_data
GROUP BY category
ORDER BY total_sales DESC;


-- 2. Profit by Region

SELECT region, SUM(profit) AS total_profit
FROM cleaned_data
GROUP BY region
ORDER BY total_profit DESC;



-- 3. Top 5 Customers

SELECT customer_name, SUM(sales) AS total_spent
FROM cleaned_data
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 5;




-- 📊 4. Average Discount Impact

SELECT AVG(discount) AS avg_discount, AVG(profit) AS avg_profit
FROM cleaned_data;