/*
* DB: Employees
* Table: employees
* Question: Get me all the employees above 60, use the appropriate date functions
*/
SELECT * FROM employees WHERE EXTRACT(YEAR FROM AGE(birth_date)) >= 60;

/*
* DB: Employees
* Table: employees
* Question: How many employees where hired in February?
*/

SELECT * FROM employees WHERE EXTRACT(MONTH FROM hire_date) = 2;

/*
* DB: Employees
* Table: employees
* Question: How many employees were born in november?
*/

SELECT * FROM employees WHERE EXTRACT(MONTH FROM birth_date) = 11;

/*
* DB: Employees
* Table: employees
* Question: Who is the oldest employee? (Use the analytical function MAX)
*/

SELECT * FROM employees where AGE(birth_date) = (SELECT max(age(birth_date)) from employees);
/*
* DB: Store
* Table: orders
* Question: How many orders were made in January 2004?
*/

select * from orders WHERE EXTRACT(YEAR FROM ORDERDATE) = 2004 AND EXTRACT(month from orderdate) = 2;

