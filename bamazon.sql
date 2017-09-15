drop database if exists bamazon ;
create database bamazon;
use bamazon;
create table Products(
item_id varchar(20) not null,
product_name varchar(20)not null,
department_name varchar(20)not null,
price float(4,2) not null,
stock_quantity INT not null
);

INSERT INTO Products (item_iD, product_name, department_name, price,stock_quantity) VALUES (
12345,
'mirror',
'Home',
66.9,
55);

INSERT INTO Products (item_iD, product_name, department_name, price,stock_quantity) VALUES (
12346,
'pillow',
'Home',
09.99,
25);
INSERT INTO Products (item_iD, product_name, department_name, price,stock_quantity) VALUES (
12347,
'pillow Cover',
'Home',
12.1,
25);
INSERT INTO Products (item_iD, product_name, department_name, price,stock_quantity) VALUES (
12348,
'jar',
'Home',
5.59,
25);
INSERT INTO Products (item_iD, product_name, department_name, price,stock_quantity) VALUES (
12348,
'fan',
'Home',
88.88,
25);
INSERT INTO Products (item_iD, product_name, department_name, price,stock_quantity) VALUES (
12349,
'rug',
'Home',
99.99,
25);
INSERT INTO Products (item_iD, product_name, department_name, price,stock_quantity) VALUES (
12351,
'sofa',
'Home',
99.99,
25);
INSERT INTO Products (item_iD, product_name, department_name, price,stock_quantity) VALUES (
12352,
'table',
'Home',
57.99,
25);
INSERT INTO Products (item_iD, product_name, department_name, price,stock_quantity) VALUES (
12353,
'chair',
'Home',
29.99,
25);
INSERT INTO Products (item_iD, product_name, department_name, price,stock_quantity) VALUES (
12354,
'basket',
'Home',
86,
25);

USE bamazon;
CREATE TABLE Departments(
DepartmentId int AUTO_INCREMENT,
PRIMARY KEY(DepartmentId),
DepartmentName varchar(50) NOT NULL,
OverHeadCosts DECIMAL(11,2) NOT NULL,
TotalSales DECIMAL(11,2) NOT NULL);


INSERT INTO Departments (DepartmentName, OverHeadCosts, TotalSales) VALUES (
'Mens Clothing',
10000,
0);

INSERT INTO Departments (DepartmentName, OverHeadCosts, TotalSales) VALUES (
'Pets',
10000,
0);

INSERT INTO Departments (DepartmentName, OverHeadCosts, TotalSales) VALUES (
'Home',
20000,
0);

INSERT INTO Departments (DepartmentName, OverHeadCosts, TotalSales) VALUES (
'Shoes',
15000,
0);

INSERT INTO Departments (DepartmentName, OverHeadCosts, TotalSales) VALUES (
'Electronics',
50000,
0);

INSERT INTO Departments (DepartmentName, OverHeadCosts, TotalSales) VALUES (
'Womens Clothing',
25000,
0);


-- This creates the alias table TotalProfits that will exist only when requested by the executive 
SHOW TABLES;
CREATE VIEW bamazon.TotalProfits AS SELECT DepartmentId, DepartmentName, OverHeadCosts, TotalSales, TotalSales-OverHeadCosts AS TotalProfit FROM Departments;



