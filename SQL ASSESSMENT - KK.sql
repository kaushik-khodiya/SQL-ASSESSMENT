-- SQL Assessment by Kaushik Khodiya, Last updated on 28 Nov 2023.

use hr;

-- ASSESSMENT 1

-- 1. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME 
-- Ascending and DEPARTMENT Descending.

SELECT * FROM employees order by first_name ASC, job_id DESC;

-- 2.Write an SQL query to print details for Workers with the first names “Vipul” and “Satish”
-- from the Worker table.

SELECT * FROM employees where first_name in ("Steven", "Neena");

-- 3. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and
-- contains six alphabets.

SELECT * FROM employees where first_name like "_____h";

-- 4. Write an SQL query to print details of the Workers whose SALARY lies between 1.

SELECT * FROM employees where salary between 10000 and 20000;

-- 5. Write an SQL query to fetch duplicate records having matching data in some fields of a table.

SELECT first_name, count(*) FROM employees group by first_name having count(*) > 1;

-- 6. Write an SQL query to show the top 6 records of a table.

SELECT * FROM employees limit 6;

-- 7. Write an SQL query to fetch the departments that have less than five people in them.

SELECT department_id, count(*) as num_people FROM employees group by department_id having count(*) < 5;

-- 8. Write an SQL query to show all departments along with the number of people in there.

SELECT department_id, count(*) as num_people FROM employees group by department_id;

-- 9. Write an SQL query to print the name of employees having the highest salary in each department.

SELECT department_id, max(salary) as Max_Salary, first_name from employees group by department_id, first_name;


-- ASSESMENT 2

-- 1 To display all the records form STUDENT table. SELECT * FROM student ;

SELECT * FROM student;

-- 2. To display any name and date of birth from the table STUDENT. SELECT StdName, DOB FROM student

SELECT StdName, DOB FROM student;

-- 3. To display all students record where percentage is greater of equal to 80 FROM student table.

SELECT * FROM student WHERE percentage >= 80;

-- 4. To display student name, stream and percentage where percentage of student is more than 80

SELECT StdName, Stream, Percentage WHERE percentage > 80;

-- 5. To display all records of science students whose percentage is more than 75 form student table.

SELECT * from student WHERE stream = ‘Science’ AND percentage > 75;
