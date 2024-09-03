SELECT * 
FROM Employee_Details_Dataset;


SELECT *, (DATEDIFF(YEAR, Date_of_Joining, GETDATE())
- CASE
	WHEN MONTH(Date_of_Joining) > MONTH(GETDATE())
	OR
	MONTH(Date_of_Joining) = MONTH(GETDATE()) AND DAY(Date_of_Joining) > DAY(GETDATE())
	THEN 1
	ELSE 0
	END) AS Years_in_Company
FROM Employee_Details_Dataset


SELECT *, (DATEDIFF(YEAR, Date_of_Joining, GETDATE())
- CASE
	WHEN MONTH(Date_of_Joining) > MONTH(GETDATE())
	OR
	MONTH(Date_of_Joining) = MONTH(GETDATE()) AND DAY(Date_of_Joining) > DAY(GETDATE())
	THEN 1
	ELSE 0
	END) AS Years_in_Company
INTO New_Employee_Details
FROM Employee_Details_Dataset

SELECT *
FROM New_Employee_Details

SELECT *
INTO Employee_Details
FROM New_Employee_Details


ALTER TABLE New_Employee_Details
DROP COLUMN Date_of_Birth, Date_of_Joining


SELECT *
FROM New_Employee_Details




