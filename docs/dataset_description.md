Business Scenario

The organisation is a mid-sized company with multiple departments. Management wants to analyse workforce costs, employee performance, attendance, and revenue contribution at both employee and department levels to improve resource allocation and productivity.

Entities & Attributes
1. Department

department_id (PK)

department_name

budget

2. Employee

employee_id (PK)

employee_name

department_id (FK)

job_title

hire_date

salary

3. Performance

performance_id (PK)

employee_id (FK)

performance_score (1–5)

review_date

4. Attendance

attendance_id (PK)

employee_id (FK)

days_present

days_absent

month

5. Sales

sales_id (PK)

employee_id (FK)

revenue

sale_date

Relationships

One department has many employees

One employee belongs to one department

One employee can have many performance reviews

One employee can have many attendance records

One employee can generate many sales records

The database is designed in Third Normal Form (3NF) to minimise redundancy and ensure data integrity.