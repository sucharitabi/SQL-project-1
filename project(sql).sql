create database retailDB;
use retailDB;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(20)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    CategoryID INT,
    Price DECIMAL(10, 2),
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    TotalPrice DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50)
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    HireDate DATE,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

CREATE TABLE EmployeeDepartments (
    EmployeeDepartmentID INT PRIMARY KEY,
    EmployeeID INT,
    DepartmentID INT,
    StartDate DATE,
    EndDate DATE,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- Categories
INSERT INTO Categories (CategoryID, CategoryName)
VALUES
    (1, 'Clothing'),
    (2, 'Shoes'),
    (3, 'Electronics'),
    (4, 'Home Appliances'),
    (5, 'Books'),
    (6, 'Toys'),
    (7, 'Beauty'),
    (8, 'Sports'),
    (9, 'Jewelry'),
    (10, 'Electricals'),
    (11, 'Furniture'),
    (12, 'Food'),
    (13, 'Movies'),
    (14, 'Music'),
    (15, 'Health');

-- Products
INSERT INTO Products (ProductID, ProductName, CategoryID, Price)
VALUES
    (1, 'T-shirt', 1, 19.99),
    (2, 'Jeans', 1, 39.99),
    (3, 'Sneakers', 2, 59.99),
    (4, 'Dress Shoes', 2, 79.99),
    (5, 'Smartphone', 3, 499.99),
    (6, 'Laptop', 3, 899.99),
    (7, 'Refrigerator', 4, 799.99),
    (8, 'Washing Machine', 4, 499.99),
    (9, 'Microwave Oven', 4, 199.99),
    (10, 'The Great Gatsby', 5, 9.99),
    (11, 'Harry Potter and the Sorcerer''s Stone', 5, 14.99),
    (12, 'LEGO Classic Medium Creative Brick Box', 6, 29.99),
    (13, 'Barbie Dreamhouse', 6, 169.99),
    (14, 'Lipstick', 7, 14.99),
    (15, 'Basketball', 8, 29.99),
    (16, 'Soccer Ball', 8, 19.99),
    (17, 'Diamond Ring', 9, 999.99),
    (18, 'LED Light Bulbs (Pack of 4)', 10, 14.99),
    (19, 'Queen Bed', 11, 499.99),
    (20, 'Dining Table Set', 11, 299.99),
    (21, 'Pizza Maker', 12, 39.99),
    (22, 'The Shawshank Redemption (DVD)', 13, 9.99),
    (23, 'Greatest Hits (CD)', 14, 12.99),
    (24, 'Vitamin C Supplement', 15, 9.99),
    (25, 'Yoga Mat', 8, 19.99),
    (26, 'Running Shoes', 2, 69.99),
    (27, 'Digital Camera', 3, 299.99),
    (28, 'Blender', 4, 49.99),
    (29, 'Coffee Maker', 4, 29.99),
    (30, 'Desk Lamp', 10, 19.99),
    (31, 'Office Chair', 11, 199.99),
    (32, 'TV Stand', 11, 149.99),
    (33, 'Couch', 11, 599.99),
    (34, 'Bedside Table', 11, 59.99),
    (35, 'Dumbbell Set', 8, 49.99),
    (36, 'Fitness Tracker', 15, 79.99),
    (37, 'Protein Powder', 15, 29.99),
    (38, 'Cookbook', 12, 19.99),
    (39, 'Action Figure', 6, 9.99),
    (40, 'Board Game', 6, 24.99);

-- Customers
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone)
VALUES
    (1, 'John', 'Doe', 'john.doe@example.com', '123-456-7890'),
    (2, 'Jane', 'Smith', 'jane.smith@example.com', '456-789-0123'),
    (3, 'Alice', 'Johnson', 'alice.johnson@example.com', '789-012-3456'),
    (4, 'Emily', 'Brown', 'emily.brown@example.com', '234-567-8901'),
    (5, 'James', 'Wilson', 'james.wilson@example.com', '345-678-9012'),
    (6, 'Emma', 'Garcia', 'emma.garcia@example.com', '456-789-0123'),
    (7, 'Oliver', 'Martinez', 'oliver.martinez@example.com', '567-890-1234'),
    (8, 'Sophia', 'Lopez', 'sophia.lopez@example.com', '678-901-2345'),
    (9, 'Liam', 'Gonzalez', 'liam.gonzalez@example.com', '789-012-3456'),
    (10, 'Ava', 'Hernandez', 'ava.hernandez@example.com', '890-123-4567'),
    (11, 'Noah', 'Torres', 'noah.torres@example.com', '901-234-5678'),
    (12, 'Isabella', 'Rivera', 'isabella.rivera@example.com', '012-345-6789'),
    (13, 'William', 'Gomez', 'william.gomez@example.com', '123-456-7890'),
    (14, 'Mia', 'Perez', 'mia.perez@example.com', '234-567-8901'),
    (15, 'James', 'Diaz', 'james.diaz@example.com', '345-678-9012'),
    (16, 'Amelia', 'Ortiz', 'amelia.ortiz@example.com', '456-789-0123'),
    (17, 'Benjamin', 'Castillo', 'benjamin.castillo@example.com', '567-890-1234'),
    (18, 'Charlotte', 'Morales', 'charlotte.morales@example.com', '678-901-2345'),
    (19, 'Elijah', 'Ramirez', 'elijah.ramirez@example.com', '789-012-3456'),
    (20, 'Luna', 'Flores', 'luna.flores@example.com', '890-123-4567'),
    (21, 'Lucas', 'Gutierrez', 'lucas.gutierrez@example.com', '901-234-5678'),
    (22, 'Harper', 'Gonzales', 'harper.gonzales@example.com', '012-345-6789'),
    (23, 'Alexander', 'Sanchez', 'alexander.sanchez@example.com', '015-340-3467');

SELECT customerID from customers;


INSERT INTO Orders (OrderID, CustomerID, OrderDate)
VALUES
    (1, 1, '2024-04-06'),
    (2, 2, '2024-04-05'),
    (3, 3, '2024-04-04'),
    (4, 4, '2024-04-03'),
    (5, 5, '2024-04-02'),
    (6, 6, '2024-04-01'),
    (7, 7, '2024-03-31'),
    (8, 8, '2024-03-30'),
    (9, 9, '2024-03-29'),
    (10, 10, '2024-03-28'),
    (11, 11, '2024-03-27'),
    (12, 12, '2024-03-26'),
    (13, 13, '2024-03-25'),
    (14, 14, '2024-03-24'),
    (15, 15, '2024-03-23'),
    (16, 16, '2024-03-22'),
    (17, 17, '2024-03-21'),
    (18, 18, '2024-03-20'),
    (19, 19, '2024-03-19'),
    (20, 20, '2024-03-18'),
    (21, 21, '2024-03-17'),
    (22, 22, '2024-03-16'),
    (23, 23, '2024-03-15');
    

-- More OrderDetails
INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity, TotalPrice)
VALUES
    (3, 2, 2, 1, 39.99),
    (4, 3, 5, 1, 499.99),
    (5, 4, 10, 2, 19.98),
    (6, 4, 11, 1, 14.99),
    (7, 5, 12, 1, 29.99),
    (8, 5, 13, 1, 169.99),
    (9, 6, 14, 1, 14.99),
    (10, 6, 15, 1, 29.99),
    (11, 7, 16, 1, 19.99),
    (12, 7, 17, 1, 999.99),
    (13, 8, 18, 1, 14.99),
    (14, 8, 19, 1, 499.99),
    (15, 9, 20, 1, 299.99),
    (16, 9, 21, 1, 39.99),
    (17, 10, 22, 1, 9.99),
    (18, 11, 23, 1, 12.99),
    (19, 12, 24, 1, 9.99),
    (20, 13, 25, 1, 19.99),
    (21, 14, 26, 1, 69.99),
    (22, 15, 27, 1, 299.99),
    (23, 16, 28, 1, 49.99);

-- Departments
INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
    (1, 'Sales'),
    (2, 'Marketing'),
    (3, 'Finance'),
    (4, 'Human Resources'),
    (5, 'IT');
    
-- Drop existing primary key constraint
ALTER TABLE EmployeeDepartments DROP PRIMARY KEY;



-- EmployeeDepartments
INSERT INTO EmployeeDepartments (EmployeeID, DepartmentID, StartDate, EndDate)
VALUES
    (1, 1, '2023-01-01', NULL),  -- Employee 1 in Sales department
    (2, 2, '2023-01-01', NULL),  -- Employee 2 in Marketing department
    (3, 3, '2023-01-01', NULL),  -- Employee 3 in Finance department
    (4, 4, '2023-01-01', NULL),  -- Employee 4 in HR department
    (5, 5, '2023-01-01', NULL),  -- Employee 5 in IT department
    (6, 1, '2023-01-01', NULL),  -- Employee 6 in Sales department
    (7, 2, '2023-01-01', NULL),  -- Employee 7 in Marketing department
    (8, 3, '2023-01-01', NULL),  -- Employee 8 in Finance department
    (9, 4, '2023-01-01', NULL),  -- Employee 9 in HR department
    (10, 5, '2023-01-01', NULL); -- Employee 10 in IT department

ALTER TABLE Employees MODIFY COLUMN EmployeeID INT AUTO_INCREMENT PRIMARY KEY;

-- Employees
INSERT INTO Employees (FirstName, LastName, Email, HireDate, DepartmentID)
VALUES
    (1, 'Michael', 'Smith', 'michael.smith@example.com', '2010-01-15', 1),
    (2, 'Sarah', 'Johnson', 'sarah.johnson@example.com', '2011-05-20', 2),
    (3, 'David', 'Williams', 'david.williams@example.com', '2012-08-10', 1),
    (4, 'Emma', 'Brown', 'emma.brown@example.com', '2013-11-25', 3),
    (5, 'Matthew', 'Jones', 'matthew.jones@example.com', '2014-09-30', 1),
    (6, 'Olivia', 'Garcia', 'olivia.garcia@example.com', '2015-07-15', 2),
    (7, 'Daniel', 'Martinez', 'daniel.martinez@example.com', '2016-04-20', 3),
    (8, 'Sophia', 'Davis', 'sophia.davis@example.com', '2017-02-05', 1),
    (9, 'William', 'Rodriguez', 'william.rodriguez@example.com', '2018-08-10', 2),
    (10, 'Isabella', 'Lopez', 'isabella.lopez@example.com', '2019-06-25', 3);

select * from employeedepartments;
  select * from categories;  
      select * from customers;
select * from departments; 
select * from employees; 
  select * from orderdetails; 
    select * from orders; 
      select * from products; 
      
      
-- Count the total number of orders.
select count(OrderID) as total_order
from orders;

-- Calculate the average order value.
select avg(TotalPrice) as avg_ordervalue
from orderdetails;

-- Find the total revenue generated.     
   select sum(TotalPrice) as total_revenue
   from orderdetails;

-- List all orders with customer information.
SELECT 
    CONCAT(c.FirstName, ' ', c.Lastname) AS customer_fullname,
    c.Email,
    c.phone,
    od.productID,
    p.ProductName
FROM
    customers c
        JOIN
    orders o ON o.CustomerID = c.CustomerID
        JOIN
    OrderDetails od ON o.OrderID = od.OrderID
        JOIN
    Products p ON od.ProductID = p.ProductID;
    
    -- List all customers who have ordered products from multiple categories.
    select * from categories;
    SELECT c.customerID,
    CONCAT(c.FirstName, ' ', c.Lastname) AS customer_fullname,
    COUNT(DISTINCT cat.CategoryID) as total_count
    FROM 
    Customers c
    JOIN Orders o ON c.CustomerID = o.CustomerID
    JOIN OrderDetails od ON o.OrderID = od.OrderID
    JOIN Products p ON od.ProductID = p.ProductID
    JOIN Categories cat ON p.CategoryID = cat.CategoryID
GROUP BY 
    c.CustomerID
HAVING 
    COUNT(DISTINCT cat.CategoryID) > 1;
    
   -- List all orders with customer information and the rank of each order based on the total price.
   SELECT 
    o.OrderID,
    c.FirstName AS CustomerFirstName,
    c.LastName AS CustomerLastName,
    SUM(od.Quantity * p.Price) AS TotalPrice,
    DENSE_RANK() OVER (ORDER BY SUM(od.Quantity * p.Price) DESC) AS OrderRank
FROM 
    Orders o
    JOIN Customers c ON o.CustomerID = c.CustomerID
    JOIN OrderDetails od ON o.OrderID = od.OrderID
    JOIN Products p ON od.ProductID = p.ProductID
GROUP BY 
    o.OrderID, c.CustomerID
ORDER BY 
    TotalPrice DESC;

-- Find customers who have placed more than 5 orders. 
SELECT
    CustomerID,
    FirstName,
    LastName
FROM
    Customers
WHERE
    CustomerID IN (
        SELECT
            CustomerID
        FROM
            Orders
        GROUP BY
            CustomerID
        HAVING
            COUNT(OrderID) > 5
    );
    
    -- Find orders with a total price greater than the average order value.
SELECT
    OrderID,
    TotalPrice
FROM
    (
        SELECT
            o.OrderID,
            SUM(od.Quantity * p.Price) AS TotalPrice,
            AVG(SUM(od.Quantity * p.Price)) OVER () AS AvgOrderValue
        FROM
            Orders o
            JOIN OrderDetails od ON o.OrderID = od.OrderID
            JOIN Products p ON od.ProductID = p.ProductID
        GROUP BY
            o.OrderID
    ) AS OrderSummary
WHERE
    TotalPrice > AvgOrderValue;
    
   -- Categorize customers based on the number of orders they have placed.
select CONCAT(FirstName, ' ', Lastname) AS customer_fullname,
    CASE
        WHEN OrderCount >= 3 THEN 'Loyal Customer'
        WHEN OrderCount >= 2 THEN 'Regular Customer'
        ELSE 'Occasional Customer'
    END AS CustomerCategory
FROM
    (
        SELECT
            c.CustomerID,
            c.FirstName,
            c.LastName,
            COUNT(o.OrderID) AS OrderCount
        FROM
            Customers c
            LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
        GROUP BY
            c.CustomerID
    ) AS CustomerOrders;

-- List all orders with customer information and the previous order date for each customer.
SELECT 
    o.OrderID,
    c.FirstName AS CustomerFirstName,
    c.LastName AS CustomerLastName,
    o.OrderDate,
    LAG(o.OrderDate) OVER (PARTITION BY c.CustomerID ORDER BY o.OrderDate) AS PreviousOrderDate
FROM 
    Orders o
    JOIN Customers c ON o.CustomerID = c.CustomerID
ORDER BY 
    c.CustomerID, o.OrderDate;

-- Find customers who have not placed any orders.
SELECT
    CustomerID,
    FirstName,
    LastName
FROM
    Customers
WHERE
    CustomerID NOT IN (
        SELECT DISTINCT
            CustomerID
        FROM
            Orders
    );

-- Calculate the total revenue for each customer, considering only the top 3 orders for each customer.
WITH RankedOrders AS (
    SELECT
        o.CustomerID,
        o.OrderID,
        SUM(od.Quantity * p.Price) AS TotalOrderAmount,
        ROW_NUMBER() OVER (PARTITION BY o.CustomerID ORDER BY SUM(od.Quantity * p.Price) DESC) AS rn
    FROM
        Orders o
        JOIN OrderDetails od ON o.OrderID = od.OrderID
        JOIN Products p ON od.ProductID = p.ProductID
    GROUP BY
        o.CustomerID, o.OrderID
)
SELECT
    CustomerID,
    SUM(TotalOrderAmount) AS TotalRevenue
FROM
    RankedOrders
WHERE
    rn <= 3
GROUP BY
    CustomerID;


-- Calculate the cumulative revenue for each product over time:
SELECT
    p.ProductID,
    p.ProductName,
    o.OrderDate,
    SUM(od.Quantity * p.Price) OVER (PARTITION BY p.ProductID ORDER BY o.OrderDate) AS CumulativeRevenue
FROM
    Orders o
    JOIN OrderDetails od ON o.OrderID = od.OrderID
    JOIN Products p ON od.ProductID = p.ProductID
ORDER BY
    p.ProductID, o.OrderDate;





