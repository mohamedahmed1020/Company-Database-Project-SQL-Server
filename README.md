# 🏢 Company Database Project (SQL Server)

This project demonstrates how to **design, manage, and query a SQL Server database** step by step.  
It covers database creation, table operations, data insertion, schema changes, and query examples — all in **SQL Server Management Studio (SSMS)**.

---

## 🚀 Features
- Create a new database (`CompanyDB`).
- Create and manage an `Employees` table.
- Insert single and multiple rows.
- Modify table schema (add, alter, drop columns).
- Update and delete rows with conditions.
- Rename tables and columns.
- Perform filtering (`WHERE`, `IN`, `BETWEEN`, `AND/OR`).
- Use aggregate functions (`SUM`, `AVG`, `MIN`, `MAX`, `COUNT`).
- Select distinct values.
- Filter even/odd IDs using the modulus operator.
- Drop tables when no longer needed.

---

## 📂 Project Structure

---

## 🛠️ Requirements
- Microsoft SQL Server  
- SQL Server Management Studio (SSMS)  

---
📊 Sample Output
| EmployeeID | First\_Name | Last\_Name | Age | Salary  |
| ---------- | ----------- | ---------- | --- | ------- |
| 1          | Ahmed       | Ali        | 30  | 10000.0 |
| 2          | Sara        | Khaled     | 25  | 25000.0 |
| 3          | Omar        | Mostafa    | 28  | 14000.0 |

🔮 Future Improvements

Add multiple tables (Departments, Projects, Salaries).

Create relationships using FOREIGN KEYS.

Write advanced queries (JOINs, GROUP BY, HAVING).

Add stored procedures & triggers.

Design ERD diagrams for visualization.

👤 Author

Mohamed Ahmed Hassan
📌 Data Analyst & Developer in Training
🚀 Exploring SQL, Python, C#, and Data Engineering
💼 MY Linkedin URL:https://www.linkedin.com/in/mohamed-ahmed-hassan-/
---

## ⚡ How to Run
1. Open **SSMS** and connect to your SQL Server instance.
2. Copy the SQL script from `CompanyDB.sql` into a **new query window**.
3. Execute the script step by step (use `GO` to separate batches).
4. Explore the database and run the sample queries.

---

## 🧑‍💻 Example Queries

```sql
-- Select all employees
SELECT * FROM Employees;

-- Filter employees aged 30
SELECT * FROM Employees WHERE Age = 30;

-- Get salary statistics
SELECT SUM(Salary), AVG(Salary), MIN(Salary), MAX(Salary)
FROM Employees;
