-- SQL Data Exploration: Sales Dataset

-- 1. Total Sales and Profit by Category
SELECT 
    Category, 
    SUM(Sales) AS Total_Sales, 
    SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY Category
ORDER BY Total_Sales DESC;

-- 2. Top 5 Best-Selling Sub-Categories
SELECT 
    `Sub-Category`, 
    SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY `Sub-Category`
ORDER BY Total_Sales DESC
LIMIT 5;

-- 3. Number of Orders per Region
SELECT 
    Region, 
    COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM sales_data
GROUP BY Region
ORDER BY Total_Orders DESC;