-- To create a database --

create database employee;

-- To Activate the database --

use employee;

-- Creating tables --

CREATE TABLE department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(30) NOT NULL,
    current_manager_id INT
);

CREATE TABLE employee (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL,
    phone_number int,
    hire_date DATE NOT NULL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES department(department_id)
);

CREATE TABLE salary (
    salary_id INT PRIMARY KEY,
    employee_id INT,
    salary int NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);

CREATE TABLE positions (
    all_jobs_id INT PRIMARY KEY,
    job_title VARCHAR(30) NOT NULL,
    min_salary int NOT NULL,
    max_salary int NOT NULL
);

CREATE TABLE job_history (
    job_history_id INT PRIMARY KEY,
    employee_id INT,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    all_jobs_id INT,
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
    FOREIGN KEY (all_jobs_id) REFERENCES positions(all_jobs_id)
);

CREATE TABLE department_manager_history (
    manager_id INT PRIMARY KEY,
    employee_id INT,
    department_id INT,
    start_date DATE NOT NULL,
    end_date DATE,
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
    FOREIGN KEY (department_id) REFERENCES department(department_id)
);

-- Inserting the values for the given tables --

INSERT INTO department (department_id, department_name, current_manager_id) VALUES
(1, 'HR', 1),
(2, 'Finance', 2),
(3, 'IT', 3),
(4, 'Sales', 4),
(5, 'Marketing', 5);

ALTER TABLE employee MODIFY phone_number VARCHAR(15);

INSERT INTO employee (employee_id, first_name, last_name, email, phone_number, hire_date, department_id) VALUES
(1, 'Ajay', 'Kishore', 'ajaykishore@gmail.com', '1234567890', '2020-01-15', 1),
(2, 'Vimal', 'Joesph', 'vmljoe@gmail.com', '9876543210', '2019-03-22', 2),
(3, 'Harshin', 'Hari', 'harshinh@gmail.com', '4561237890', '2021-06-10', 3),
(4, 'Sarah', 'Sankar', 'sarah@gmail.com', '7418529630', '2018-07-12', 4),
(5, 'Amith', 'Dev', 'amithdev@gmail.com', '8529637410', '2017-09-30', 5),
(6, 'Aishwarya', 'Naresh ', 'aishwarya@gmail.com', '3692581470', '2022-05-18', 1),
(7, 'Aishwarya', 'Rajesh', 'aishurajesh@gmail.com', '1593574560', '2020-11-09', 2),
(8, 'Anoop', 'Ramesh', 'anoopr15@gmail.com', '7539518520', '2019-02-25', 3),
(9, 'Amal', 'Davis', 'amaldavis@gmail.com', '9517534560', '2021-10-05', 4),
(10, 'Praveena', 'Rajan', 'praveenar3001@gmail.com', '8527419630', '2018-12-15', 5),
(11, 'Monisha', 'Babu', 'monisha@gmail.com', '9876543211', '2017-05-20', 1),
(12, 'Vinodhini', 'Subramanian', 'vinodhini@gmail.com', '1234567891', '2020-08-15', 2),
(13, 'James', 'Joesph', 'jamesjoesph@gmail.com', '4561237891', '2019-06-30', 3),
(14, 'Sudarshan', 'Siva', 'sudarshans@gmail.com', '7894561231', '2018-10-10', 4),
(15, 'Sarath', 'Rajan', 'sarath16@gmail.com', '3692581471', '2021-12-05', 5),
(16, 'Shobha', 'Rajan', 'shobharajan@gmail.com', '7539518521', '2023-03-18', 1),
(17, 'Raj', 'Mohan', 'rajmohan@gmail.com', '9517534561', '2019-04-22', 2),
(18, 'Roja', 'Devi', 'rojadevi@gmail.com', '8527419631', '2017-07-25', 3),
(19, 'Priya', 'Dharsini', 'priya12@gmail.com', '1593574561', '2016-09-05', 4),
(20, 'Syed', 'Shek', 'syedshek@gmail.com', '4561237892', '2022-11-12', 5),
(21, 'Jeyanthi', 'Selvaraj', 'jeyanthis@gmail.com', '9876543212', '2018-01-22', 1),
(22, 'Sridevi', 'Saravanan', 'sridevis@gmail.com', '1234567892', '2020-02-15', 2),
(23, 'Joshua', 'Samuel', 'samuel.joshua@gmail.com', '3692581472', '2019-05-30', 3),
(24, 'Arya', 'Ramesh', 'aryaramesh@gmail.com', '7539518522', '2017-08-18', 4),
(25, 'David', 'Joe', 'david.joe@gmail.com', '9517534562', '2021-03-25', 5),
(26, 'Peter', 'Parker', 'peterparker@gmail.com', '8527419632', '2018-06-05', 1),
(27, 'Gwen', 'Stacy', 'gwenstacy@gmail.com', '1593574562', '2019-09-10', 2),
(28, 'Savitha', 'Elumalai', 'savitha@gmail.com', '4561237893', '2023-01-12', 3),
(29, 'Roshni', 'Vicky', 'roshvicky@gmail.com', '9876543213', '2017-04-22', 4),
(30, 'Saratha', 'Devi', 'sarathadevi@gmail.com', '1234567893', '2020-07-15', 5),
(31, 'Subha', 'shree', 'subhashree@gmail.com', '3692581473', '2016-10-05', 1),
(32, 'Jai', 'Saran', 'jaisaran@gmail.com', '7539518523', '2021-08-30', 2),
(33, 'Arjun', 'Manohar', 'arjunmanohar@gmail.com', '9517534563', '2019-11-20', 3),
(34, 'Shruthi', 'Siva', 'sivashruthi@gmail.com', '8527419633', '2022-12-10', 4),
(35, 'Pandi', 'Raj', 'pandiraj@gmail.com', '1593574563', '2018-05-02', 5);

INSERT INTO salary (salary_id, employee_id, salary, start_date, end_date) VALUES
(1, 1, 50000, '2020-01-15', NULL),
(2, 2, 60000, '2019-03-22', '2023-06-30'),
(3, 3, 70000, '2021-06-10', NULL),
(4, 4, 80000, '2018-07-12', '2022-12-01'),
(5, 5, 75000, '2017-09-30', '2021-05-15'),
(6, 6, 55000, '2022-05-18', NULL),
(7, 7, 62000, '2020-11-09', '2024-01-10'),
(8, 8, 68000, '2019-02-25', NULL),
(9, 9, 74000, '2021-10-05', NULL),
(10, 10, 77000, '2018-12-15', '2023-03-25'),
(11, 11, 58000, '2017-05-20', '2022-07-31'),
(12, 12, 63000, '2020-08-15', NULL),
(13, 13, 72000, '2019-06-30', NULL),
(14, 14, 69000, '2018-10-10', '2021-09-01'),
(15, 15, 76000, '2021-12-05', NULL),
(16, 16, 54000, '2023-03-18', NULL),
(17, 17, 61000, '2019-04-22', '2022-02-15'),
(18, 18, 73000, '2017-07-25', '2020-11-10'),
(19, 19, 79000, '2016-09-05', '2021-01-05'),
(20, 20, 65000, '2022-11-12', NULL),
(21, 21, 58000, '2018-01-22', '2023-06-15'),
(22, 22, 63000, '2020-02-15', NULL),
(23, 23, 71000, '2019-05-30', '2022-08-30'),
(24, 24, 69000, '2017-08-18', NULL),
(25, 25, 77000, '2021-03-25', NULL),
(26, 26, 59000, '2018-06-05', '2020-12-01'),
(27, 27, 64000, '2019-09-10', NULL),
(28, 28, 70000, '2023-01-12', NULL),
(29, 29, 74000, '2017-04-22', '2020-09-25'),
(30, 30, 68000, '2020-07-15', NULL),
(31, 31, 53000, '2016-10-05', '2019-03-20'),
(32, 32, 61000, '2021-08-30', NULL),
(33, 33, 75000, '2019-11-20', '2023-02-28'),
(34, 34, 80000, '2022-12-10', NULL),
(35, 35, 72000, '2018-05-02', '2022-06-30');

INSERT INTO positions (all_jobs_id, job_title, min_salary, max_salary) VALUES
(1, 'HR Manager', 50000, 80000),
(2, 'Finance Analyst', 55000, 90000),
(3, 'Software Engineer', 60000, 100000),
(4, 'Sales Executive', 45000, 85000),
(5, 'Marketing Specialist', 50000, 95000);

INSERT INTO department_manager_history (manager_id, employee_id, department_id, start_date, end_date) VALUES
(1, 5, 1, '2018-06-01', '2022-12-31'), -- Past manager
(2, 10, 2, '2019-08-15', NULL), -- Current manager
(3, 15, 3, '2020-04-10', '2023-11-20'), -- Past manager
(4, 20, 4, '2021-01-25', NULL), -- Current manager
(5, 25, 5, '2017-09-05', '2023-10-01'); -- Past manager

INSERT INTO job_history (job_history_id, employee_id, start_date, end_date, all_jobs_id) VALUES
(1, 1, '2020-01-15', '2024-03-10', 1),
(2, 2, '2019-03-22', '2023-06-30', 2),
(3, 3, '2021-06-10', '2025-01-20', 3),
(4, 4, '2018-07-12', '2022-11-15', 4),
(5, 5, '2017-09-30', '2021-12-31', 5),
(6, 6, '2022-05-18', '2024-02-25', 1),
(7, 7, '2020-11-09', '2024-01-01', 2),
(8, 8, '2019-02-25', '2023-05-20', 3),
(9, 9, '2021-10-05', '2024-03-15', 4),
(10, 10, '2018-12-15', '2022-08-01', 5),
(11, 11, '2017-05-20', '2021-07-15', 1),
(12, 12, '2020-08-15', '2024-03-05', 2),
(13, 13, '2019-06-30', '2022-10-05', 3),
(14, 14, '2018-10-10', '2023-01-30', 4),
(15, 15, '2021-12-05', '2025-02-10', 5),
(16, 16, '2023-03-18', '2026-04-12', 1),
(17, 17, '2019-04-22', '2023-06-10', 2),
(18, 18, '2017-07-25', '2022-12-31', 3),
(19, 19, '2016-09-05', '2023-05-01', 4),
(20, 20, '2022-11-12', '2025-01-15', 5),
(21, 21, '2018-01-22', '2023-09-01', 1),
(22, 22, '2020-02-15', '2024-04-20', 2),
(23, 23, '2019-05-30', '2023-11-20', 3),
(24, 24, '2017-08-18', '2021-12-15', 4),
(25, 25, '2021-03-25', '2025-01-10', 5),
(26, 26, '2018-06-05', '2023-02-10', 1),
(27, 27, '2019-09-10', '2022-09-30', 2),
(28, 28, '2023-01-12', '2026-03-05', 3),
(29, 29, '2017-04-22', '2021-06-25', 4),
(30, 30, '2020-07-15', '2024-04-01', 5),
(31, 31, '2016-10-05', '2022-04-30', 1),
(32, 32, '2021-08-30', '2025-06-15', 2),
(33, 33, '2019-11-20', '2023-07-10', 3),
(34, 34, '2022-12-10', '2025-02-25', 4),
(35, 35, '2018-05-02', '2023-08-15', 5);

-- Shows all the values in the given tables --

select * from department;
select * from employee;
select * from salary;
select * from positions;
select * from department_manager_history;
select * from job_history;

--STORED PROCEDURE--

--Gets all salary records for a specific employee--

DELIMITER //
CREATE PROCEDURE get_employee_salary_history(IN emp INT)
BEGIN
    SELECT 
        s.emp_id,
        e.first_name,
        e.last_name,
        s.salary,
        s.from_date,
        s.to_date
    FROM 
        salary s
    JOIN 
        employees e ON s.emp_id = e.emp_id
    WHERE 
        s.emp_id = emp;
END //
DELIMITER ;

--Adds a new employee with all required fields--

DELIMITER //
CREATE PROCEDURE insert_new_employee (
    IN first_name VARCHAR(50),
    IN last_name VARCHAR(50),
    IN email VARCHAR(100),
    IN gender VARCHAR(10),
    IN date_of_birth DATE,
    IN hire_date DATE,
    IN phone_number VARCHAR(15),
    IN address TEXT,
    IN department_id INT,
    IN job_id INT
)
BEGIN
    INSERT INTO employees (
        first_name, last_name, email, gender,
        date_of_birth, hire_date, phone_number,
        address, department_id, job_id
    ) VALUES (
        first_name, last_name, email, gender,
        date_of_birth, hire_date, phone_number,
        address, department_id, job_id
    );
END //
DELIMITER ;

--Lists all employees in a given department--

DELIMITER //
CREATE PROCEDURE get_department_employees(IN dept_id INT)
BEGIN
    SELECT 
        e.emp_id,
        e.first_name,
        e.last_name,
        j.job_title,
        s.salary
    FROM 
        employees e
    JOIN 
        jobs j ON e.job_id = j.job_id
    JOIN 
        salary s ON e.emp_id = s.emp_id
    WHERE 
        e.department_id = dept_id
        AND s.to_date IS NULL;
END //
DELIMITER ;

--Add a New Employee--

DELIMITER //
CREATE PROCEDURE AddEmployee(
    IN fname VARCHAR(50),
    IN lname VARCHAR(50),
    IN email VARCHAR(100),
    IN phone VARCHAR(15),
    IN hire_date DATE,
    IN department_id INT
)
BEGIN
    INSERT INTO employee (first_name, last_name, email, phone_number, hire_date, department_id)
    VALUES (fname, lname, email, phone, hire_date, department_id);
END;
//
DELIMITER ;

--Update Employee Email--

DELIMITER //
CREATE PROCEDURE UpdateEmployeeEmail(
    IN empId INT,
    IN newEmail VARCHAR(100)
)
BEGIN
    UPDATE employee SET email = newEmail WHERE employee_id = empId;
END;
//
DELIMITER ;

--Assign Salary to Employee--

DELIMITER //
CREATE PROCEDURE AssignSalary(
    IN empId INT,
    IN salaryAmt DECIMAL(10,2),
    IN startDate DATE
)
BEGIN
    INSERT INTO salary (emp_id, salary, start_date)
    VALUES (empId, salaryAmt, startDate);
END;
//
DELIMITER ;

--Update Salary (Ends Previous & Adds New)--

DELIMITER //
CREATE PROCEDURE UpdateSalary(
    IN empId INT,
    IN newSalary DECIMAL(10,2),
    IN effectiveDate DATE
)
BEGIN
    -- End current salary
    UPDATE salary 
    SET end_date = effectiveDate
    WHERE emp_id = empId AND end_date IS NULL;

    -- Add new salary
    INSERT INTO salary (emp_id, salary, start_date)
    VALUES (empId, newSalary, effectiveDate);
END;
//
DELIMITER ;

--Assign Department Manager--

DELIMITER //
CREATE PROCEDURE AssignDepartmentManager(
    IN managerId INT,
    IN deptId INT,
    IN startDate DATE
)
BEGIN
    INSERT INTO department_manager_history (manager_id, department_id, start_date)
    VALUES (managerId, deptId, startDate);
END;
//
DELIMITER ;

--Get Employee Full Details--

DELIMITER //
CREATE PROCEDURE GetEmployeeDetails(
    IN empId INT
)
BEGIN
    SELECT 
        e.employee_id, e.first_name, e.last_name, e.email, e.phone_number, e.hire_date,
        d.department_name,
        s.salary,
        p.job_title
    FROM employee e
    LEFT JOIN department d ON e.department_id = d.department_id
    LEFT JOIN salary s ON e.employee_id = s.emp_id AND s.end_date IS NULL
    LEFT JOIN job_history jh ON e.employee_id = jh.emp_id AND jh.end_date IS NULL
    LEFT JOIN positions p ON jh.all_jobs_id = p.all_jobs_id
    WHERE e.employee_id = empId;
END;
//
DELIMITER ;

--Shows employee info wit their department, job title, & current salary--

CREATE VIEW emp_details_view AS
SELECT 
    e.employee_id,
    e.first_name,
    e.last_name,
    e.email,
    e.hire_date,
    e.phone_number,
    d.department_name,
    p.job_title,
    s.salary
FROM 
    employee e
JOIN 
    department d ON e.department_id = d.department_id
LEFT JOIN 
    job_history jh ON e.employee_id = jh.employee_id AND jh.end_date IS NULL
LEFT JOIN 
    positions p ON jh.all_jobs_id = p.all_jobs_id
JOIN 
    salary s ON e.employee_id = s.employee_id
WHERE 
    s.end_date IS NULL;
    

--Lists all current department managers--

CREATE VIEW department_manager_view AS
SELECT
    dm.manager_id AS employee_id,
    CONCAT(e.first_name, ' ', e.last_name) AS manager_name,
    d.department_name,
    dm.start_date AS from_date,
    dm.end_date AS to_date
FROM
    department_manager_history dm
JOIN
    employee e ON dm.manager_id = e.employee_id
JOIN
    department d ON dm.department_id = d.department_id
WHERE
    dm.end_date IS NULL;


DESCRIBE department_manager_history;

SHOW TABLES;



