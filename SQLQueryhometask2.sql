CREATE DATABASE Department
USE Department
CREATE TABLE Employee (
 Id int identity primary key,
 Fullname varchar (255) not null,
 Age int CHECK (Age>0) not null,
 Email nvarchar(45) UNIQUE not null,
 Salary float not null CHECK (Salary BETWEEN 300 and 2000)
)
--DROP TABLE Employee
INSERT INTO Employee
VALUES 
('Nuh-zade Murad', 23, 'murad@gmail.com', 535.5),
('Allahverdi Muradov', 24, 'allahverdi@gmail.com', 768.7),
('Konul Caniyeva', 25, 'konul@gmail.com', 1695.9),
('Rasim Abdullayev', 19, 'rasim@gmail.com', 394.9),
('Tahir Quliyev', 20, 'tahir@gmail.com', 500.43)
Select * from Employee
UPDATE Employee SET Salary=676 where id=1
Select * from Employee where 500<Salary AND Salary<1500
Select fullname,email,salary from Employee order by Salary DESC
