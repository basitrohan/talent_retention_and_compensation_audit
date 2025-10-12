-- 1. Departments Table
CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(100)
);

-- 2. Employees Table
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    full_name VARCHAR(100),
    gender VARCHAR(10),
    hire_date DATE,
    department_id INT REFERENCES departments(department_id),
    job_role VARCHAR(100),
    date_of_birth DATE
);

-- 3. Salaries Table
CREATE TABLE salaries (
    employee_id INT REFERENCES employees(employee_id) PRIMARY KEY,
    salary_amount NUMERIC(10, 2),
    effective_date DATE
);

-- 4. Performance Reviews Table
CREATE TABLE performance_reviews (
    review_id SERIAL PRIMARY KEY,
    employee_id INT REFERENCES employees(employee_id),
    review_date DATE,
    performance_score INT -- Scale: 1 to 5
);

-- 5. Attrition Table
CREATE TABLE attrition (
    attrition_id SERIAL PRIMARY KEY,
    employee_id INT REFERENCES employees(employee_id),
    attrition_date DATE,
    attrition_reason VARCHAR(100)
);

--Inserting values in tables
-- department table
INSERT INTO departments (department_name) VALUES
('Human Resources'),
('Engineering'),
('Sales'),
('Finance'),
('IT Support');

SELECT * FROM departments

--employees
INSERT INTO employees
(full_name, gender, hire_date, department_id, job_role, date_of_birth) VALUES
('Ali Raza', 'Male', '2018-03-12', 2, 'Software Engineer', '1995-06-10'),
('Fatima Noor', 'Female', '2019-07-20', 1, 'HR Manager', '1990-04-25'),
('Ahmad Khan', 'Male', '2020-02-05', 3, 'Sales Executive', '1993-09-15'),
('Ayesha Malik', 'Female', '2021-06-10', 4, 'Accountant', '1994-01-22'),
('Zain Ahmed', 'Male', '2017-11-03', 2, 'Senior Developer', '1989-07-14'),
('Noor Fatima', 'Female', '2022-01-15', 5, 'IT Support Specialist', '1996-08-30'),
('Hassan Ali', 'Male', '2019-09-08', 3, 'Sales Lead', '1991-03-19'),
('Sara Bukhari', 'Female', '2020-12-20', 1, 'Recruiter', '1997-12-05'),
('Tariq Jameel', 'Male', '2016-04-17', 4, 'Finance Manager', '1987-10-10'),
('Maham Iqbal', 'Female', '2023-03-01', 5, 'Network Engineer', '1998-09-25'),
('Bilal Akram', 'Male', '2018-08-14', 2, 'Data Engineer', '1990-11-05'),
('Amna Shah', 'Female', '2019-02-11', 3, 'Sales Associate', '1992-03-17'),
('Danish Saeed', 'Male', '2020-07-22', 2, 'Backend Developer', '1994-06-12'),
('Zoya Rehman', 'Female', '2021-09-13', 1, 'HR Assistant', '1996-02-23'),
('Usman Tariq', 'Male', '2017-12-01', 5, 'System Admin', '1993-07-01'),
('Hira Khan', 'Female', '2018-10-19', 4, 'Finance Analyst', '1995-11-28'),
('Fahad Mehmood', 'Male', '2019-06-30', 3, 'Sales Consultant', '1991-05-20'),
('Areeba Zulfiqar', 'Female', '2020-04-18', 1, 'HR Executive', '1998-12-13'),
('Salman Zubair', 'Male', '2016-11-09', 2, 'Senior Developer', '1988-04-02'),
('Iqra Aziz', 'Female', '2022-05-10', 5, 'Helpdesk Analyst', '1997-01-08'),
('Umer Farooq', 'Male', '2021-03-27', 4, 'Junior Accountant', '1996-10-15'),
('Mehwish Anwar', 'Female', '2020-01-05', 1, 'Talent Specialist', '1995-03-03'),
('Jawad Hafeez', 'Male', '2019-10-10', 3, 'Sales Trainer', '1993-12-17'),
('Sana Khalid', 'Female', '2018-07-07', 4, 'Finance Officer', '1991-08-09'),
('Moiz Butt', 'Male', '2023-02-28', 2, 'Frontend Developer', '1999-06-06'),
('Hiba Javed', 'Female', '2021-11-23', 5, 'IT Coordinator', '1997-10-11'),
('Yasir Qureshi', 'Male', '2017-05-12', 2, 'Tech Lead', '1986-02-18'),
('Rabia Shafiq', 'Female', '2018-01-18', 1, 'HR Coordinator', '1994-09-09'),
('Kashan Ali', 'Male', '2019-12-24', 4, 'Finance Intern', '1998-05-29'),
('Nimra Sheikh', 'Female', '2020-08-03', 3, 'Sales Assistant', '1996-04-14');

SELECT * FROM employees

--Salaries
INSERT INTO salaries
(employee_id,salary_amount,effective_date) VALUES
(1, 95000, '2024-01-01'), (2, 88000, '2024-01-01'), (3, 70000, '2023-12-01'),
(4, 60000, '2024-01-01'), (5, 110000, '2024-01-01'), (6, 65000, '2024-01-01'),
(7, 78000, '2023-12-01'), (8, 57000, '2024-01-01'), (9, 120000, '2024-01-01'),
(10, 73000, '2024-01-01'), (11, 105000, '2024-01-01'), (12, 69000, '2023-12-01'),
(13, 96000, '2023-12-01'), (14, 52000, '2024-01-01'), (15, 85000, '2024-01-01'),
(16, 91000, '2024-01-01'), (17, 74000, '2024-01-01'), (18, 58000, '2024-01-01'),
(19, 115000, '2024-01-01'), (20, 60000, '2024-01-01'), (21, 56000, '2024-01-01'),
(22, 83000, '2023-12-01'), (23, 94000, '2024-01-01'), (24, 72000, '2024-01-01'),
(25, 69000, '2023-12-01'), (26, 97000, '2024-01-01'), (27, 61000, '2024-01-01'),
(28, 48000, '2024-01-01'), (29, 67000, '2024-01-01'), (30, 55000, '2024-01-01');

SELECT * FROM salaries

--Performance_reviews
INSERT INTO performance_reviews 
(employee_id, review_date, performance_score) VALUES
(1, '2023-12-01', 5), (2, '2023-12-01', 4), (3, '2023-12-01', 3),
(4, '2023-12-01', 4), (5, '2023-12-01', 5), (6, '2023-12-01', 4),
(7, '2023-12-01', 3), (8, '2023-12-01', 4), (9, '2023-12-01', 5),
(10, '2023-12-01', 3), (11, '2023-12-01', 5), (12, '2023-12-01', 3),
(13, '2023-12-01', 4), (14, '2023-12-01', 3), (15, '2023-12-01', 4),
(16, '2023-12-01', 5), (17, '2023-12-01', 4), (18, '2023-12-01', 2),
(19, '2023-12-01', 5), (20, '2023-12-01', 3), (21, '2023-12-01', 4),
(22, '2023-12-01', 4), (23, '2023-12-01', 5), (24, '2023-12-01', 3),
(25, '2023-12-01', 3), (26, '2023-12-01', 5), (27, '2023-12-01', 4),
(28, '2023-12-01', 3), (29, '2023-12-01', 3), (30, '2023-12-01', 2);

SELECT * FROM performance_reviews

--Attrition only for resigned employees
INSERT INTO attrition 
(employee_id, attrition_date, attrition_reason) VALUES
(3, '2024-02-15', 'Resigned - Better Opportunity'),
(6, '2024-03-20', 'Terminated - Performance'),
(18, '2024-04-01', 'Resigned - Personal Reasons'),
(28, '2024-05-05', 'Resigned - Relocation');

SELECT * FROM attrition

-- Data entery in all tables done
-- Now writing the analysis queries to get the insights

-- Analysis Query 1(Average Salary of each department)
SELECT 
	d.department_name,
	Round(AVG(s.salary_amount),2) AS avg_salary
FROM
	salaries s
JOIN 
	employees e ON s.employee_id = e.employee_id
JOIN 
	departments d ON e.employee_id = d.department_id
GROUP BY 
	department_name
ORDER BY
	avg_salary DESC;
-- Hence by the average we can see which department pays the most on avg
-- we are using inner join or join to avoid any nulls, mismatches

-- Analysis Query 2(Attrition Rate by Departments)
SELECT 
	d.department_name,
	COUNT(a.attrition_id) AS attrition,
	COUNT(e.employee_id) AS employees,
	ROUND(COUNT(a.attrition_id)::DECIMAL / COUNT(e.employee_id)*100,2) AS attrition_rate
FROM
	employees e
JOIN
	departments d ON e.department_id = d.department_id
LEFT JOIN 
	attrition a ON e.employee_id = a.employee_id
GROUP BY 
	department_name
ORDER BY
	attrition_rate DESC;
-- Hence by this we can conlude that Human Resourses department is losing 
-- most of the employees 

-- Analysis Query 3(High Performers Not Yet Promoted or With Low Salary)
SELECT
	e.full_name,
	d.department_name,
	s.salary_amount,
	pr.performance_score
FROM
	employees e
JOIN
	performance_reviews pr ON e.employee_id = pr.employee_id
JOIN
	salaries s ON e.employee_id = s.employee_id
JOIN
	departments d ON e.employee_id = d.department_id
WHERE
	performance_score >= 3
	AND s.salary_amount < (
		SELECT AVG(salary_amount)
		FROM salaries
	)
ORDER BY
	s.salary_amount ASC;
-- This shows that 2 employess Ayesha Malik(pr=4) and Ahmed Khan(pr=3)
-- are not yet promoted

-- Analysis Query 4( Average Performance Score by Department)
SELECT 
    d.department_name,
    ROUND(AVG(pr.performance_score), 2) AS avg_score
FROM 
    performance_reviews pr
JOIN 
    employees e ON pr.employee_id = e.employee_id
JOIN 
    departments d ON e.department_id = d.department_id
GROUP BY 
    d.department_name
ORDER BY 
    avg_score DESC;
-- Hence Finance dep has the highest avg score and sales have the lowest

-- Analysis Query 5( Employees Who Left Within 1 Year of Hiring)
SELECT 
    e.full_name,
    e.hire_date,
    a.attrition_date,
    a.attrition_reason,
    ROUND((a.attrition_date - e.hire_date)::NUMERIC / 30, 1) AS months_worked
FROM 
    attrition a
JOIN 
    employees e ON a.employee_id = e.employee_id
WHERE 
    a.attrition_date <= e.hire_date + INTERVAL '1 year';
-- It can be see that non has left from any department