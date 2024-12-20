create table departments (
department_id SERIAL Primary Key,
department_name Varchar (50));

-- SERIAL is to generate autoincrement integers

INSERT INTO departments (department_name) VALUES
( 'Sales'),
( 'Marketing'),
( 'Finance'),
  ('HR');

select * from departments;

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(100),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

INSERT INTO employees (employee_name, department_id) VALUES
( 'John Doe', 1),
( 'Jane Smith', 2),
( 'Michael Johnson', 1),
( 'Emily Davis', 3),
( 'Chris Wilson', 3),
('Steve Smith', 4);

select * from employees

select COUNT(employee_id) as total, department_name from employees e JOIN departments d 
on e.department_id = d.department_id group by department_name;