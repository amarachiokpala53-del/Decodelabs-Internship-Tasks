CREATE DATABASE Decodelabs;

USE Decodelabs;

SHOW TABLES;

SELECT * 
FROM `project 3 decodelabs`;

RENAME TABLE
 `project 3 decodelabs` to decodelabs_project;
 
SELECT * 
FROM decodelabs_project;

SELECT COUNT(*) AS Total_Orders 
FROM decodelabs_project;

SELECT * 
FROM decodelabs_project;

SELECT COUNT(*)
FROM decodelabs_project
WHERE `Payment Method` = 'Online';

SELECT COUNT(*)
FROM decodelabs_project
WHERE `Payment Method` = 'Cash';

SELECT COUNT(*)
FROM decodelabs_project
WHERE `Payment Method` = 'Credit Card';

SELECT COUNT(*)
FROM decodelabs_project
WHERE `Payment Method` = 'Debit Card';

SELECT COUNT(*)
FROM decodelabs_project
WHERE `Payment Method` = 'Gift Card';

DESCRIBE decodelabs_project;

UPDATE decodelabs_project
SET `Total Price` = REPLACE(REPLACE(`Total Price`, '$', ''), ',', '');

ALTER TABLE decodelabs_project
MODIFY `Total Price` DECIMAL(10,2);

SELECT *
FROM decodelabs_project
ORDER BY `Total Price` DESC;

SELECT *
FROM decodelabs_project
ORDER BY `Total Price` ASC;

SELECT *
FROM decodelabs_project
WHERE `Total Price`> 500;

SELECT COUNT(*)
FROM decodelabs_project
WHERE `Total Price`> 500; 

SELECT *
FROM decodelabs_project;

SELECT `Referral Source`,
COUNT(*) AS Number_of_Orders
FROM decodelabs_project
GROUP BY `Referral Source`;

SELECT `Order Status`,
COUNT(*) AS Number_of_Orders
FROM decodelabs_project
GROUP BY `Order Status`;

SELECT SUM(`Total Price`) AS Total_Revenue
FROM decodelabs_project;

SELECT Product,
       SUM(`Total Price`) AS Revenue
FROM decodelabs_project
GROUP BY Product
ORDER BY Revenue DESC;

SELECT AVG(`Total Price`) AS Average_Order_Value
FROM decodelabs_project;

SELECT `Customer ID`,
       SUM(`Total Price`) AS Total_Spent
FROM decodelabs_project
GROUP BY `Customer ID`
ORDER BY Total_Spent DESC
LIMIT 5;

SELECT `Order Status`,
       COUNT(*) AS Total_Orders,
       SUM(`Total Price`) AS Revenue,
       AVG(`Total Price`) AS Average_Order_Value
FROM decodelabs_project
GROUP BY `Order Status`;