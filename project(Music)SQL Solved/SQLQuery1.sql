-- 1) Create a new database
CREATE DATABASE CompanyDB;
GO

-- 2) Use the newly created database
USE CompanyDB;
GO

-- 3) Create a table
CREATE TABLE dbo.Employees (
    EmployeeID INT PRIMARY KEY,
    First_Name NVARCHAR(50) NOT NULL,
    Last_Name NVARCHAR(50) NOT NULL,
    Age INT NULL,
    Salary DECIMAL(10,2) NULL
);
GO

-- 4) Insert data into the table
INSERT INTO dbo.Employees (EmployeeID, First_Name, Last_Name, Age, Salary)
VALUES (1, 'Ahmed', 'Ali', 30, 10000);
GO
INSERT INTO dbo.Employees (EmployeeID, First_Name, Last_Name, Age, Salary)
VALUES
(2, 'Sara', 'Khaled', 25, 12000),
(3, 'Omar', 'Mostafa', 28, 14000);
GO

-- 5) Add a new column
ALTER TABLE dbo.Employees ADD Department NVARCHAR(50) NULL;
GO

-- 6) Change the data type of a column (must specify NULL/NOT NULL)
ALTER TABLE dbo.Employees ALTER COLUMN Salary FLOAT NULL;
GO

-- 7) Select data from the table
SELECT * FROM dbo.Employees;
GO
SELECT First_Name, Salary FROM dbo.Employees;
GO
SELECT * FROM dbo.Employees WHERE Age = 30;
GO
SELECT * FROM dbo.Employees WHERE Age IN (25, 30, 35);
GO
SELECT * FROM dbo.Employees WHERE Salary BETWEEN 10000 AND 20000;
GO

-- 8) Rename the table and a column
EXEC sp_rename 'dbo.Employees', 'Staff';
GO
EXEC sp_rename 'dbo.Staff.First_Name', 'FName', 'COLUMN';
GO

-- 9) Delete rows and update data
DELETE FROM dbo.Staff WHERE Age > 50;
GO
UPDATE dbo.Staff SET Salary = 25000 WHERE EmployeeID = 2;
GO

-- 10) Filtering with AND/OR
SELECT * FROM dbo.Staff WHERE Age > 25 AND Salary > 15000;
GO

-- 11) Select distinct values
SELECT DISTINCT Last_Name FROM dbo.Staff;
GO

-- 12) Aggregate functions
SELECT COUNT(*) FROM dbo.Staff;
GO
SELECT COUNT(DISTINCT Last_Name) FROM dbo.Staff;
GO
SELECT SUM(Salary) AS TotalSalary, AVG(Salary) AS AvgSalary, 
       MIN(Salary) AS MinSalary, MAX(Salary) AS MaxSalary
FROM dbo.Staff;
GO

-- 13) Filter even/odd IDs using modulus operator
SELECT * FROM dbo.Staff WHERE EmployeeID % 2 = 0;  -- even IDs
GO
SELECT * FROM dbo.Staff WHERE EmployeeID % 2 = 1;  -- odd IDs
GO

-- 14) Drop a column or table (only if you really want to remove them)
-- ALTER TABLE dbo.Staff DROP COLUMN Department;
-- DROP TABLE dbo.Staff;
-- GO