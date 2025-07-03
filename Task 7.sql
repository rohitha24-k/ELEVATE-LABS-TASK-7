CREATE DATABASE Schema1;
USE Schema1;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    City VARCHAR(50)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    Product VARCHAR(100),
    Amount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
INSERT INTO Customers VALUES
(1, 'Rohitha', 'Hyderabad'),
(2, 'Anil', 'Bangalore'),
(3, 'Sneha', 'Delhi'),
(4, 'Vikram', 'Chennai'),
(5, 'Lakshmi', 'Mumbai');

INSERT INTO Orders VALUES
(101, 1, 'Laptop', 60000.00),
(102, 1, 'Mouse', 500.00),
(103, 2, 'Keyboard', 1200.00),
(104, 3, 'Tablet', 15000.00),
(105, 4, 'Printer', 7000.00),
(106, 5, 'Chair', 2000.00);

CREATE VIEW CustomerTotalSpend AS
SELECT 
    c.CustomerID,
    c.Name,
    SUM(o.Amount) AS TotalSpent
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.Name;

SELECT * FROM CustomerTotalSpend;

CREATE VIEW HighValueOrders AS
SELECT 
    OrderID,
    CustomerID,
    Product,
    Amount
FROM Orders
WHERE Amount > 10000;

SELECT * FROM HighValueOrders;

CREATE VIEW CustomerOrderDetails AS
SELECT 
    c.Name AS CustomerName,
    c.City,
    o.Product,
    o.Amount
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID;

SELECT * FROM CustomerOrderDetails;

SELECT * FROM CustomerOrderDetails WHERE City = 'Hyderabad';

DROP VIEW IF EXISTS CustomerTotalSpend;
DROP VIEW IF EXISTS HighValueOrders;
DROP VIEW IF EXISTS CustomerOrderDetails;







