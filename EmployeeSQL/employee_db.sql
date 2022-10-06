USE employee_db
DROP TABLE IF EXITS departments;
DROP TABLE IF EXITS dep_emp;
DROP TABLE IF EXITS dep_manager;
DROP TABLE IF EXITS employees;
DROP TABLE IF EXITS salaries;
DROP TABLE IF EXITS titles;

CREATE TABLE titles(
	title_id VARCHAR (50) NOT NULL,
	title VARCHAR (50) NOT NULL	
);

SELECT * FROM titles;



CREATE TABLE departments (
	dept_no VARCHAR (50) NOT NULL,
	dept_name VARCHAR (50) NOT NULL
);

SELECT * FROM departments;


CREATE TABLE dept_emp (
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR (30) NOT NULL
);


CREATE TABLE dept_manager (
	dep_no VARCHAR (30) NOT NULL,
	emp_no INTEGER NOT NULL
);


CREATE TABLE employees (
	emp_no INTEGER NOT NULL,
	emp_titl_id VARCHAR (10) NOT NULL,
	birth_date VARCHAR (10) NOT NULL,
	first_name VARCHAR (20) NOT NULL,
	last_name VARCHAR (20) NOT NULL,
	sex VARCHAR (1) NOT NULL,
	hire_date VARCHAR (10) NOT NULL
);

SELECT * FROM employees

CREATE TABLE salaries (
	emp_no INTEGER NOT NULL,
	salary INTEGER NOT NULL
);


ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "titles" ("title_id");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");



