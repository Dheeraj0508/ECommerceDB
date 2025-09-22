**E-Commerce Database Project**
**Overview**
This project is a simple simulation of an e-commerce system built using MySQL 8.4. It includes key components like customers, products, orders, and order details. The goal is to demonstrate how to design a database, manage relationships between data, and apply basic SQL skills effectively.
____________________________________________________________________________________________________________________________________________________________________________
**Schema Design
Tables**

Customers – Stores information about customers.
Products – Keeps track of product details.
Orders – Records customer orders.
OrderDetails – Connects orders to products and tracks quantities.
________________________________________________________________________________________________________________________________________________________________________
**Relationships**

Each customer can have multiple orders (One-to-Many).
Each order can include multiple products (One-to-Many through OrderDetails).
Each product can appear in many orders (One-to-Many through OrderDetails).
Overall, orders and products have a Many-to-Many relationship via the OrderDetails table.
________________________________________________________________________________________________________________________________________________________________
SQL Script

The full SQL script is provided in schema.sql. It includes:
Creating the database (ECommerceDB)
Defining all tables and constraints
Adding some sample data to test the setup
_____________________________________________________________________________________________________________________________________________________________________________
**Interview Prep Notes**

_Normalization_ :- Organizing data to reduce repetition and maintain integrity by splitting large tables into smaller, related ones.

_Primary Key vs. Foreign Key_ :- A primary key uniquely identifies a record in a table. A foreign key links one table to another by referring to the primary key.

_Surrogate Key_ :- An artificial key, usually an auto-increment number, used to uniquely identify a record instead of using natural data.

_Composite Key_ :- When two or more columns together form a unique identifier for a record.

_AUTO_INCREMENT_ :- Automatically generates a unique number for a column, commonly used for primary keys.

_VARCHAR vs. INT_ :- VARCHAR stores text of variable length, while INT stores numeric values. Use VARCHAR for names and addresses, and INT for IDs or quantities.

Types of JOINs – Ways to combine data from multiple tables:

INNER JOIN
LEFT JOIN
RIGHT JOIN
FULL OUTER JOIN

_Constraints_ :-  Rules to keep data accurate, like NOT NULL, UNIQUE, PRIMARY KEY, FOREIGN KEY, or CHECK.

_ER Diagram_ ;- A visual map showing tables (entities), columns (attributes), and relationships (keys).

_DDL (Data Definition Language)_ :- SQL commands used to create or modify database structures, like CREATE, ALTER, and DROP.

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Tools Used**
> MySQL 8.4
> MySQL Workbench
> dbdiagram.io
______________________________________________________________________________________________________________________________________________________________________________________

Repository Contents

> schema.sql — Full SQL script
> ER_diagram.png — ER diagram image
> README.md — Overview and interview prep notes
