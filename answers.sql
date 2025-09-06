-- Q1. 

SELECT 
    employees.firstName,
    employees.lastName,
    employees.email,
    employees.officeCode
FROM 
    employees
INNER JOIN 
    offices ON employees.officeCode = offices.officeCode;

--Q2. 

SELECT 
    products.productName,
    products.productVendor,
    products.productLine
FROM 
    products
LEFT JOIN 
    productlines ON products.productLine = productlines.productLine;

--Q3. 

SELECT 
    orders.orderDate,
    orders.shippedDate,
    orders.status,
    orders.customerNumber
FROM 
    customers
RIGHT JOIN 
    orders ON customers.customerNumber = orders.customerNumber
ORDER BY 
    orders.orderDate
LIMIT 10;

