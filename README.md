Employee Task Management System – Database 

This project contains the SQL database schema for an Employee Task Management System, 
designed to manage employee information, tasks, departments, job roles, and job history efficiently.

--Tables Included // Key Features:

Employee Management: 
  -Stores details of employees such as name, contact info, hire date, department, and job role.
Department & Position Management: 
  -Keeps track of various departments and job positions within the organization.
Task Assignment: 
  -Supports task allocation to employees with deadlines, status, and priority.
Salary Tracking: 
  -Maintains employee salary data including updates over time.
Job History: 
  -Records employee career progression and historical job role data.
Manager History: 
  -Tracks which employees served as department managers and their service periods.


--Relationships Between Tables:

employees ↔ departments (Many-to-One), 
employees ↔ positions (Many-to-One), 
employees ↔ tasks (One-to-Many), 
employees ↔ salaries (One-to-Many), 
employees ↔ job_history (One-to-Many), 
departments ↔ department_manager_history (One-to-Many), 

