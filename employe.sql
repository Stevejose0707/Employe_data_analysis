create database employe;
use employe;
show tables;
#Retrieve all employees' details from the dataset.
select * from details;
select count(*) from details;
#List all distinct departments in the organization.
create view departments as select Department from details;
select distinct * from departments;
#Retrieve all employees' details from the dataset who are currently active.
select * from details where Status='Active';
#List employees whose "Status" is "On Leave" or "Inactive.
select FullName from details where Status='Inactive' or  Status='On leave';
#Retrieve employees who joined the company before January 1, 2020.
select FullName from details where DateOfJoining>2020-01-01;
#Find employees located in port johnview."
select FullName from details where City="Port Johnview";
#List employees with a salary greater than $80,000.
select FullName from details where Salary>80000;
#Retrieve details of employees in the "Sales" department with a "Manager" position.
select FullName from details where Department='Sales' and Position='Manager';
#Find employees whose "FullName" starts with the letter 'C.
select FullName from details where FullName like 'C%';
#Calculate the total salary paid across all employees.
select sum(Salary) from details;
#Find the average salary of employees in the Finance department.
select avg(Salary) from details where Department='Finance';
select min(Salary),max(Salary) from details;
#Count the number of employees in each department. 
select Department,count(Department) from details group by Department;
#Find the total number of employees grouped by "Status."
select Status,count(Status) from details group by Status;
#Retrieve employees sorted by "DateOfJoining" in ascending order 
select FullName from details order by DateOfJoining desc;
#List the top 5 highest-paid employees along with their details.
select * from details order by Salary desc limit 5;
#Find the top 3 cities with the most employees
select City,count(*) as citycount from details group by City order by citycount desc limit 3;
#Retrieve the details of employees whose salaries are in the top 10% of the dataset.
select * from details order by salary desc limit 5;
#Find the total number of "Managers" across all departments.
select Department,count(*) from details  where Position='Manager' group by Department;
#Retrieve the details of employees with the lowest salary in each department.
select * from details where (Department,Salary) in ( select Department,min(salary) from details group by Department); 
#Determine the department with the highest total salary expenditure.
select Department,sum(Salary) as total from details group by Department order by total desc limit 1; 




