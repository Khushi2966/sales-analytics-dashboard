-- SALES ANALYTICS PROJECT
-- Database: sales_analytics
-- Table: sales_data

USE sales_analytics;

-- TASK 1: View all data
SELECT * FROM sales_data;

-- TASK 2: Count total orders
SELECT COUNT(*) AS Total_Orders FROM sales_data;

-- TASK 3: Total units sold
SELECT SUM(Units) AS Total_Units FROM sales_data;

-- TASK 4: Total sales
SELECT SUM(Total_Sales) AS Total_Sales FROM sales_data;

-- TASK 5: Average order value
SELECT AVG(Total_Sales) AS Average_Order_Value FROM sales_data;

-- TASK 6: Sales by region
SELECT Region, SUM(Total_Sales) AS Total_Sales
FROM sales_data GROUP BY Region ORDER BY Total_Sales DESC;

-- TASK 7: Sales by product
SELECT Product, SUM(Total_Sales) AS Total_Sales
FROM sales_data GROUP BY Product ORDER BY Total_Sales DESC;

-- TASK 8: Sales by category
SELECT Category, SUM(Total_Sales) AS Total_Sales
FROM sales_data GROUP BY Category ORDER BY Total_Sales DESC;

-- TASK 9: Sales by salesperson
SELECT Salesperson, SUM(Total_Sales) AS Total_Sales
FROM sales_data GROUP BY Salesperson ORDER BY Total_Sales DESC;

-- TASK 10: Monthly sales
SELECT MONTH(Date) AS Month_Number, SUM(Total_Sales) AS Total_Sales
FROM sales_data GROUP BY MONTH(Date) ORDER BY Month_Number;

-- TASK 11: Maximum order value
SELECT MAX(Total_Sales) AS Maximum_Sale FROM sales_data;

-- TASK 12: Minimum order value
SELECT MIN(Total_Sales) AS Minimum_Sale FROM sales_data;

-- TASK 13: Order count by region
SELECT Region, COUNT(*) AS Order_Count
FROM sales_data GROUP BY Region ORDER BY Order_Count DESC;

-- TASK 14: Average sales by region
SELECT Region, AVG(Total_Sales) AS Average_Sales
FROM sales_data GROUP BY Region ORDER BY Average_Sales DESC;

-- TASK 15: View North region orders
SELECT * FROM sales_data WHERE Region = 'North';

-- TASK 16: Total sales from North region
SELECT SUM(Total_Sales) AS North_Sales
FROM sales_data WHERE Region = 'North';

-- TASK 17: North region Electronics orders
SELECT * FROM sales_data
WHERE Region = 'North' AND Category = 'Electronics';

-- TASK 18: North or South region orders
SELECT * FROM sales_data
WHERE Region = 'North' OR Region = 'South';

-- TASK 19: Regions with sales above 1,000,000
SELECT Region, SUM(Total_Sales) AS Total_Sales
FROM sales_data
GROUP BY Region
HAVING SUM(Total_Sales) > 1000000;

-- TASK 20: High-value orders
SELECT * FROM sales_data WHERE Total_Sales > 100000;

-- TASK 21: Count high-value orders
SELECT COUNT(*) AS High_Value_Orders
FROM sales_data WHERE Total_Sales > 100000;

-- TASK 22: Order count by category
SELECT Category, COUNT(*) AS Order_Count
FROM sales_data GROUP BY Category ORDER BY Order_Count DESC;

-- TASK 23: Top-selling product
SELECT Product, SUM(Total_Sales) AS Total_Sales
FROM sales_data GROUP BY Product
ORDER BY Total_Sales DESC LIMIT 1;

-- TASK 24: Top 5 orders by sales
SELECT * FROM sales_data
ORDER BY Total_Sales DESC LIMIT 5;

-- TASK 25: Salesperson performance
SELECT Salesperson, COUNT(*) AS Orders,
       SUM(Total_Sales) AS Total_Sales,
       AVG(Total_Sales) AS Average_Order_Value
FROM sales_data
GROUP BY Salesperson ORDER BY Total_Sales DESC;

-- TASK 26: Average order value by salesperson
SELECT Salesperson, AVG(Total_Sales) AS Average_Order_Value
FROM sales_data
GROUP BY Salesperson ORDER BY Average_Order_Value DESC;

-- TASK 27: Region and category performance
SELECT Region, Category, SUM(Total_Sales) AS Total_Sales
FROM sales_data
GROUP BY Region, Category ORDER BY Total_Sales DESC;

-- TASK 28: Classify orders by sales level
SELECT Order_ID, Total_Sales,
       CASE
         WHEN Total_Sales >= 100000 THEN 'High'
         WHEN Total_Sales >= 50000 THEN 'Medium'
         ELSE 'Low'
       END AS Sales_Level
FROM sales_data;

-- TASK 29: Count orders by sales level
SELECT
  CASE
    WHEN Total_Sales >= 100000 THEN 'High'
    WHEN Total_Sales >= 50000 THEN 'Medium'
    ELSE 'Low'
  END AS Sales_Level,
  COUNT(*) AS Order_Count
FROM sales_data
GROUP BY
  CASE
    WHEN Total_Sales >= 100000 THEN 'High'
    WHEN Total_Sales >= 50000 THEN 'Medium'
    ELSE 'Low'
  END
ORDER BY Order_Count DESC;

-- TASK 30: Top 5 salespersons
SELECT Salesperson, SUM(Total_Sales) AS Total_Sales
FROM sales_data GROUP BY Salesperson
ORDER BY Total_Sales DESC LIMIT 5;

-- TASK 31: Product order count
SELECT Product, COUNT(*) AS Order_Count
FROM sales_data GROUP BY Product ORDER BY Order_Count DESC;

-- TASK 32: Product average order value
SELECT Product, AVG(Total_Sales) AS Average_Order_Value
FROM sales_data GROUP BY Product
ORDER BY Average_Order_Value DESC;

-- TASK 33: Category performance
SELECT Category, COUNT(*) AS Orders,
       SUM(Units) AS Units_Sold,
       SUM(Total_Sales) AS Total_Sales,
       AVG(Total_Sales) AS Average_Order_Value
FROM sales_data
GROUP BY Category ORDER BY Total_Sales DESC;

-- TASK 34: Region performance
SELECT Region, COUNT(*) AS Orders,
       SUM(Units) AS Units_Sold,
       SUM(Total_Sales) AS Total_Sales,
       AVG(Total_Sales) AS Average_Order_Value
FROM sales_data
GROUP BY Region ORDER BY Total_Sales DESC;

-- TASK 35: Salesperson performance with units
SELECT Salesperson, COUNT(*) AS Orders,
       SUM(Units) AS Units_Sold,
       SUM(Total_Sales) AS Total_Sales,
       AVG(Total_Sales) AS Average_Order_Value
FROM sales_data
GROUP BY Salesperson ORDER BY Total_Sales DESC;

-- TASK 36: Orders with more than 5 units
SELECT * FROM sales_data WHERE Units > 5;

-- TASK 37: Orders with sales greater than 100,000
SELECT * FROM sales_data WHERE Total_Sales > 100000;

-- TASK 38: Count orders above 100,000
SELECT COUNT(*) AS Orders_Above_100000
FROM sales_data WHERE Total_Sales > 100000;

-- TASK 39: Sales between 20,000 and 50,000
SELECT * FROM sales_data
WHERE Total_Sales BETWEEN 20000 AND 50000;

-- TASK 40: Electronics sales
SELECT SUM(Total_Sales) AS Electronics_Sales
FROM sales_data WHERE Category = 'Electronics';

-- TASK 41: Furniture sales
SELECT SUM(Total_Sales) AS Furniture_Sales
FROM sales_data WHERE Category = 'Furniture';

-- TASK 42: Highest unit price
SELECT MAX(Unit_Price) AS Highest_Unit_Price FROM sales_data;

-- TASK 43: Lowest unit price
SELECT MIN(Unit_Price) AS Lowest_Unit_Price FROM sales_data;

-- TASK 44: Units sold by region
SELECT Region, SUM(Units) AS Total_Units
FROM sales_data GROUP BY Region ORDER BY Total_Units DESC;

-- TASK 45: Units sold by product
SELECT Product, SUM(Units) AS Total_Units
FROM sales_data GROUP BY Product ORDER BY Total_Units DESC;

-- TASK 46: Monthly sales with month name
SELECT MONTH(Date) AS Month_Number,
       MONTHNAME(Date) AS Month_Name,
       SUM(Total_Sales) AS Total_Sales
FROM sales_data
GROUP BY MONTH(Date), MONTHNAME(Date)
ORDER BY Month_Number;

-- TASK 47: Best sales month
SELECT MONTHNAME(Date) AS Month_Name,
       SUM(Total_Sales) AS Total_Sales
FROM sales_data
GROUP BY MONTH(Date), MONTHNAME(Date)
ORDER BY Total_Sales DESC LIMIT 1;

-- TASK 48: Salesperson with highest average order value
SELECT Salesperson, AVG(Total_Sales) AS Average_Order_Value
FROM sales_data
GROUP BY Salesperson
ORDER BY Average_Order_Value DESC LIMIT 1;

-- TASK 49: Region with most orders
SELECT Region, COUNT(*) AS Order_Count
FROM sales_data
GROUP BY Region
ORDER BY Order_Count DESC LIMIT 1;

-- TASK 50: Category with most units sold
SELECT Category, SUM(Units) AS Total_Units
FROM sales_data
GROUP BY Category
ORDER BY Total_Units DESC LIMIT 1;
