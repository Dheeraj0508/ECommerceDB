-- Create the database
CREATE DATABASE ECommerceDB;

-- Use the newly created database
USE ECommerceDB;

-- Create Customers table
CREATE TABLE Customers (
    Customer_ID INT AUTO_INCREMENT PRIMARY KEY,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    Contact VARCHAR(15) UNIQUE NOT NULL,
    Country VARCHAR(50) NOT NULL,
    City VARCHAR(50) NOT NULL
) ENGINE=InnoDB;

-- Create Products table
CREATE TABLE Products (
    Product_ID INT AUTO_INCREMENT PRIMARY KEY,
    Product_Name VARCHAR(100) NOT NULL,
    Price DECIMAL(10,2) NOT NULL CHECK (Price >= 0),
    Stock INT NOT NULL CHECK (Stock >= 0)
) ENGINE=InnoDB;

-- Create Orders table
CREATE TABLE Orders (
    Order_ID INT AUTO_INCREMENT PRIMARY KEY,
    Customer_ID INT NOT NULL,
    Order_Date DATE NOT NULL,
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID)
) ENGINE=InnoDB;


CREATE TABLE OrderDetails (
    OrderDetail_ID INT AUTO_INCREMENT PRIMARY KEY,
    Order_ID INT NOT NULL,
    Product_ID INT NOT NULL,
    Quantity INT NOT NULL CHECK (Quantity > 0),
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID),
    FOREIGN KEY (Product_ID) REFERENCES Products(Product_ID)
) ENGINE=InnoDB;

-- Insert sample data into Customers
INSERT INTO Customers (First_Name, Last_Name, Contact, Country, City) VALUES
('Amit', 'Sharma', '9876543210', 'India', 'Indore'),
('Priya', 'Mehta', '9988776655', 'India', 'Mumbai'),
('John', 'Doe', '447123456789', 'UK', 'London');

-- Insert sample data into Products
INSERT INTO Products (Product_Name, Price, Stock) VALUES
('Laptop', 60000.00, 10),
('Smartphone', 30000.00, 25),
('Headphones', 2000.00, 50);

-- Insert sample data into Orders
INSERT INTO Orders (Customer_ID, Order_Date) VALUES
(1, '2025-09-22'),
(2, '2025-09-21');

-- Insert sample data into OrderDetails
INSERT INTO OrderDetails (Order_ID, Product_ID, Quantity) VALUES
(1, 1, 1),   -- Amit bought 1 Laptop
(1, 3, 2),   -- Amit bought 2 Headphones
(2, 2, 1);   -- Priya bought 1 Smartphone

