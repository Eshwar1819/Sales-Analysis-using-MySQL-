Select * from company_sales;
Use company;

SELECT * FROM sales 
WHERE ship_mode = 'economy' AND total_amount > 25000;

SELECT * FROM Sales 
WHERE Category = 'Technology' AND Country = 'Ireland' AND Order_date > '2020-01-01';

SELECT * FROM sales 
ORDER BY unit_profit DESC 
LIMIT 10; 

SELECT order_ID, product_name FROM sales 
WHERE product_name LIKE '%ACCO%'; 

Select city, sum(total_amount) as total_sales from sales
Group by City
Order by Total_Sales DESC
Limit 5;

SELECT customer_name, total_amount FROM sales
Order By Total_Amount desc
Limit 10, 10;

Select sum(total_amount) As 'total revenue', avg(unit_cost) as 'average unit cost', count(order_ID) as 'total orders'
from sales;

SELECT COUNT(DISTINCT Region) AS 'Unique Region' FROM sales;

SELECT customer_name AS 'customer name', COUNT(order_id) AS 'total orders' FROM sales
Group by customer_name
Order by count(order_id) desc; 

SELECT product_name AS 'product name', SUM(total_amount) AS 'total sales', RANK() OVER (ORDER BY SUM(total_amount) DESC) AS 'sale ranking' FROM sales
Group by product_name
Limit 5;