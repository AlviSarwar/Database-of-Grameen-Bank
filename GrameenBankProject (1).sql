drop database grameenbank;
create database GrameenBank;
use GrameenBank;
create table Clients
(  
   Client_ID int primary KEY auto_increment,
   Full_Name varchar(100) not null,
   Date_of_birth date,
   Gender varchar(10),
   NID varchar(20) unique,
   Phone varchar(20),
   Email varchar(100),
   Address text,
   Join_Date date
);
INSERT INTO Clients (Full_Name, Date_of_birth, Gender, NID, Phone, Email, Address, Join_Date) VALUES
('Rahim Uddin', '1985-03-15', 'Male', 'NID1001', '01710000001', 'rahim.uddin@gmail.com', 'Dhaka, Bangladesh', '2023-01-10'),
('Karim Ali', '1990-07-22', 'Male', 'NID1002', '01710000002', 'karim.ali@yahoo.com', 'Chittagong, Bangladesh', '2023-02-12'),
('Nasrin Akter', '1995-11-05', 'Female', 'NID1003', '01710000003', 'nasrin.akter@gmail.com', 'Sylhet, Bangladesh', '2023-03-01'),
('Shamima Sultana', '1988-02-19', 'Female', 'NID1004', '01710000004', 'shamima.sultana@yahoo.com', 'Rajshahi, Bangladesh', '2023-03-20'),
('Mizanur Rahman', '1992-05-30', 'Male', 'NID1005', '01710000005', 'mizanur.rahman@gmail.com', 'Khulna, Bangladesh', '2023-04-01'),
('Farzana Khatun', '1996-08-25', 'Female', 'NID1006', '01710000006', 'farzana.khatun@gmail.com', 'Dhaka, Bangladesh', '2023-04-15'),
('Imran Hossain', '1987-09-14', 'Male', 'NID1007', '01710000007', 'imran.hossain@yahoo.com', 'Chittagong, Bangladesh', '2023-05-01'),
('Salma Begum', '1993-12-03', 'Female', 'NID1008', '01710000008', 'salma.begum@gmail.com', 'Sylhet, Bangladesh', '2023-05-20'),
('Arif Mahmud', '1989-04-10', 'Male', 'NID1009', '01710000009', 'arif.mahmud@gmail.com', 'Rajshahi, Bangladesh', '2023-06-05'),
('Jannatul Ferdous', '1997-01-15', 'Female', 'NID1010', '01710000010', 'jannatul.ferdous@gmail.com', 'Khulna, Bangladesh', '2023-06-15'),
('Tanvir Hasan', '1994-10-20', 'Male', 'NID1011', '01710000011', 'tanvir.hasan@yahoo.com', 'Dhaka, Bangladesh', '2023-07-01'),
('Rasheda Akter', '1991-06-12', 'Female', 'NID1012', '01710000012', 'rasheda.akter@gmail.com', 'Chittagong, Bangladesh', '2023-07-10'),
('Mahfuz Ahmed', '1986-08-18', 'Male', 'NID1013', '01710000013', 'mahfuz.ahmed@yahoo.com', 'Sylhet, Bangladesh', '2023-08-01'),
('Sadia Islam', '1998-03-28', 'Female', 'NID1014', '01710000014', 'sadia.islam@gmail.com', 'Rajshahi, Bangladesh', '2023-08-15'),
('Abdul Bari', '1984-11-22', 'Male', 'NID1015', '01710000015', 'abdul.bari@gmail.com', 'Khulna, Bangladesh', '2023-09-01'),
('Shahina Akter', '1992-02-10', 'Female', 'NID1016', '01710000016', 'shahina.akter@dhaka.com', 'Dhaka, Bangladesh', '2023-09-15'),
('Jahangir Alam', '1985-07-20', 'Male', 'NID1017', '01710000017', 'jahangir.alam@chittagong.com', 'Chittagong, Bangladesh', '2023-09-18'),
('Sadia Rahman', '1990-03-25', 'Female', 'NID1018', '01710000018', 'sadia.rahman@gmail.com', 'Sylhet, Bangladesh', '2023-09-20'),
('Maruf Hossain', '1987-06-05', 'Male', 'NID1019', '01710000019', 'maruf.hossain@gmail.com', 'Rajshahi, Bangladesh', '2023-09-25'),
('Tasmina Khatun', '1993-04-15', 'Female', 'NID1020', '01710000020', 'tasmina.khatun@gmail.com', 'Khulna, Bangladesh', '2023-09-28'),
('Alim Uddin', '1989-12-22', 'Male', 'NID1021', '01710000021', 'alim.uddin@gmail.com', 'Munshiganj, Bangladesh', '2023-10-01'),
('Mitu Akter', '1996-09-09', 'Female', 'NID1022', '01710000022', 'mitu.akter@gmail.com', 'Dhaka, Bangladesh', '2023-10-03'),
('Sabbir Rahman', '1991-08-14', 'Male', 'NID1023', '01710000023', 'sabbir.rahman@gmail.com', 'Dhaka, Bangladesh', '2023-10-05'),
('Rebeka Parvin', '1995-01-18', 'Female', 'NID1024', '01710000024', 'rebeka.parvin@gmail.com', 'Barishal, Bangladesh', '2023-10-08'),
('Nazmul Huda', '1988-05-27', 'Male', 'NID1025', '01710000025', 'nazmul.huda@gmail.com', 'Munshiganj, Bangladesh', '2023-10-10');

SELECT * FROM Clients;

CREATE TABLE Branches (
    Branch varchar(50) PRIMARY KEY ,
    District VARCHAR(200),
    Manager_ID INT 
	
);
INSERT INTO Branches (Branch, District, Manager_ID) VALUES
('Dhaka_Main', 'Dhaka', NULL),
('Chittagong_Central', 'Chittagong', NULL),
('Sylhet_Town', 'Sylhet', NULL),
('Rajshahi_City', 'Rajshahi', NULL),
('Khulna_Bazar', 'Khulna', NULL),
('Sonarang', 'Munshiganj', NULL),
('Uttara', 'Dhaka', NULL),
('Motijheel', 'Dhaka', NULL),
('Barishal_City', 'Barishal', NULL),
('Tongibari', 'Munshiganj', NULL);

SELECT * FROM Branches;

 create table Accounts
 (
    Account_ID int primary key auto_increment,
    Client_ID int,
    Branch varchar(50),
    Account_Type varchar(50),
    Balance double default 0.00,
    Opened_on date,
    Current_Status varchar(20),
    foreign key(Client_ID)references Clients(Client_ID),
    foreign key(Branch)references Branches(Branch)
 );
 INSERT INTO Accounts (Client_ID, Branch, Account_Type, Balance, Opened_on, Current_Status) VALUES
(1, 'Dhaka_Main', 'Savings', 25000.00, '2023-01-15', 'Active'),
(2, 'Chittagong_Central', 'Current', 40000.00, '2023-02-20', 'Active'),
(3, 'Sylhet_Town', 'Savings', 18000.00, '2023-03-05', 'Active'),
(4, 'Rajshahi_City', 'Current', 30000.00, '2023-03-25', 'Active'),
(5, 'Khulna_Bazar', 'Savings', 15000.00, '2023-04-10', 'Active'),
(6, 'Dhaka_Main', 'Loan', 50000.00, '2023-04-18', 'Active'),
(7, 'Chittagong_Central', 'Savings', 27000.00, '2023-05-10', 'Active'),
(8, 'Sylhet_Town', 'Current', 35000.00, '2023-05-22', 'Active'),
(9, 'Rajshahi_City', 'Savings', 21000.00, '2023-06-10', 'Active'),
(10, 'Khulna_Bazar', 'Current', 33000.00, '2023-06-20', 'Active'),
(11, 'Dhaka_Main', 'Savings', 28000.00, '2023-07-05', 'Active'),
(12, 'Chittagong_Central', 'Loan', 60000.00, '2023-07-12', 'Active'),
(13, 'Sylhet_Town', 'Current', 24000.00, '2023-08-05', 'Active'),
(14, 'Rajshahi_City', 'Savings', 19000.00, '2023-08-20', 'Active'),
(15, 'Khulna_Bazar', 'Current', 45000.00, '2023-09-05', 'Active'),
(16, 'Sonarang', 'Savings', 20000.00, '2023-09-18', 'Active'),
(17, 'Sonarang', 'Current', 35000.00, '2023-09-22', 'Active'),
(18, 'Uttara', 'Savings', 18000.00, '2023-09-28', 'Active'),
(19, 'Uttara', 'Loan', 50000.00, '2023-10-03', 'Active'),
(20, 'Motijheel', 'Savings', 22000.00, '2023-10-07', 'Active'),
(21, 'Motijheel', 'Current', 40000.00, '2023-10-12', 'Active'),
(22, 'Barishal_City', 'Savings', 25000.00, '2023-10-14', 'Active'),
(23, 'Barishal_City', 'Loan', 60000.00, '2023-10-19', 'Active'),
(24, 'Tongibari', 'Savings', 17000.00, '2023-10-22', 'Active'),
(25, 'Tongibari', 'Current', 32000.00, '2023-10-27', 'Active');
SELECT * FROM Accounts;

 

CREATE TABLE Employees (
    Employee_ID INT PRIMARY KEY AUTO_INCREMENT,
    Full_Name VARCHAR(100),
    Designation VARCHAR(50),
    Branch varchar(50),
    Phone VARCHAR(20),
    Email VARCHAR(100),
    foreign key(Branch)references Branches(Branch)
);
INSERT INTO Employees (Full_Name, Designation, Branch, Phone, Email) VALUES
-- Dhaka_Main
('Rahim Ahmed', 'Manager', 'Dhaka_Main', '01710000001', 'rahim.ahmed@gmail.com'),
('Dr. Yunus', 'Chairman', 'Dhaka_Main', '01711111111', 'younus@gmail.com'),
('Salma Akter', 'Accountant', 'Dhaka_Main', '01710000002', 'salma.akter@gmail.com'),
('Kamrul Hasan', 'Accountant', 'Dhaka_Main', '01710000003', 'kamrul.hasan@gmail.com'),
('Rafiul Islam', 'Cashier', 'Dhaka_Main', '01710000004', 'rafiul.islam@gmail.com'),
('Nasrin Jahan', 'Cashier', 'Dhaka_Main', '01710000005', 'nasrin.jahan@gmail.com'),
('Tanvir Rahman', 'Loan Officer', 'Dhaka_Main', '01710000006', 'tanvir.rahman@gmail.com'),
('Ruhul Amin', 'IT Officer', 'Dhaka_Main', '01710000007', 'ruhul.amin@gmail.com'),
('Mithila Chowdhury', 'Customer Service Officer', 'Dhaka_Main', '01710000008', 'mithila.chowdhury@gmail.com'),

-- Chittagong_Central
('Arif Hossain', 'Manager', 'Chittagong_Central', '01710000009', 'arif.hossain@gmail.com'),
('Farhana Yasmin', 'Accountant', 'Chittagong_Central', '01710000010', 'farhana.yasmin@gmail.com'),
('Jahidul Islam', 'Accountant', 'Chittagong_Central', '01710000011', 'jahidul.islam@gmail.com'),
('Tania Rahman', 'Cashier', 'Chittagong_Central', '01710000012', 'tania.rahman@gmail.com'),
('Masud Karim', 'Cashier', 'Chittagong_Central', '01710000013', 'masud.karim@gmail.com'),
('Nafisa Nahar', 'Loan Officer', 'Chittagong_Central', '01710000014', 'nafisa.nahar@gmail.com'),
('Imran Hossain', 'IT Officer', 'Chittagong_Central', '01710000015', 'imran.hossain@gmail.com'),
('Shakila Sultana', 'Customer Service Officer', 'Chittagong_Central', '01710000016', 'shakila.sultana@gmail.com'),

-- Sylhet_Town
('Hasib Rahman', 'Manager', 'Sylhet_Town', '01710000017', 'hasib.rahman@gmail.com'),
('Mou Akter', 'Accountant', 'Sylhet_Town', '01710000018', 'mou.akter@gmail.com'),
('Rezaul Karim', 'Accountant', 'Sylhet_Town', '01710000019', 'rezaul.karim@gmail.com'),
('Sabina Yasmin', 'Cashier', 'Sylhet_Town', '01710000020', 'sabina.yasmin@gmail.com'),
('Abdullah Al Mamun', 'Cashier', 'Sylhet_Town', '01710000021', 'abdullah.mamun@gmail.com'),
('Mehnaz Hossain', 'Loan Officer', 'Sylhet_Town', '01710000022', 'mehnaz.hossain@gmail.com'),
('Shamim Hasan', 'IT Officer', 'Sylhet_Town', '01710000023', 'shamim.hasan@gmail.com'),
('Tumpa Rani', 'Customer Service Officer', 'Sylhet_Town', '01710000024', 'tumpa.rani@gmail.com'),

-- Rajshahi_City
('Rakibul Islam', 'Manager', 'Rajshahi_City', '01710000025', 'rakibul.islam@gmail.com'),
('Ritu Akter', 'Accountant', 'Rajshahi_City', '01710000026', 'ritu.akter@gmail.com'),
('Mamun Hossain', 'Accountant', 'Rajshahi_City', '01710000027', 'mamun.hossain@gmail.com'),
('Sadia Islam', 'Cashier', 'Rajshahi_City', '01710000028', 'sadia.islam@gmail.com'),
('Nayeem Hasan', 'Cashier', 'Rajshahi_City', '01710000029', 'nayeem.hasan@gmail.com'),
('Tahmina Sultana', 'Loan Officer', 'Rajshahi_City', '01710000030', 'tahmina.sultana@gmail.com'),
('Faisal Rahman', 'IT Officer', 'Rajshahi_City', '01710000031', 'faisal.rahman@gmail.com'),
('Lubna Akhter', 'Customer Service Officer', 'Rajshahi_City', '01710000032', 'lubna.akhter@gmail.com'),

-- Khulna_Bazar
('Asif Rahman', 'Manager', 'Khulna_Bazar', '01710000033', 'asif.rahman@gmail.com'),
('Samia Akter', 'Accountant', 'Khulna_Bazar', '01710000034', 'samia.akter@gmail.com'),
('Omar Faruk', 'Accountant', 'Khulna_Bazar', '01710000035', 'omar.faruk@gmail.com'),
('Faria Noor', 'Cashier', 'Khulna_Bazar', '01710000036', 'faria.noor@gmail.com'),
('Nadim Hossain', 'Cashier', 'Khulna_Bazar', '01710000037', 'nadim.hossain@gmail.com'),
('Samiha Rahman', 'Loan Officer', 'Khulna_Bazar', '01710000038', 'samiha.rahman@gmail.com'),
('Zahid Hasan', 'IT Officer', 'Khulna_Bazar', '01710000039', 'zahid.hasan@gmail.com'),
('Anika Chowdhury', 'Customer Service Officer', 'Khulna_Bazar', '01710000040', 'anika.chowdhury@gmail.com'),

-- Sonarang
('Noman Islam', 'Manager', 'Sonarang', '01710000041', 'noman.islam@gmail.com'),
('Sadia Jahan', 'Accountant', 'Sonarang', '01710000042', 'sadia.jahan@gmail.com'),
('Hasan Mahmud', 'Accountant', 'Sonarang', '01710000043', 'hasan.mahmud@gmail.com'),
('Arifa Rahman', 'Cashier', 'Sonarang', '01710000044', 'arifa.rahman@gmail.com'),
('Tareq Aziz', 'Cashier', 'Sonarang', '01710000045', 'tareq.aziz@gmail.com'),
('Sumaiya Nahar', 'Loan Officer', 'Sonarang', '01710000046', 'sumaiya.nahar@gmail.com'),
('Mehedi Hasan', 'IT Officer', 'Sonarang', '01710000047', 'mehedi.hasan@gmail.com'),
('Ruma Akter', 'Customer Service Officer', 'Sonarang', '01710000048', 'ruma.akter@gmail.com'),

-- Uttara
('Sharif Hossain', 'Manager', 'Uttara', '01710000049', 'sharif.hossain@gmail.com'),
('Fahima Akhter', 'Accountant', 'Uttara', '01710000050', 'fahima.akhter@gmail.com'),
('Rashidul Islam', 'Accountant', 'Uttara', '01710000051', 'rashidul.islam@gmail.com'),
('Moulya Sultana', 'Cashier', 'Uttara', '01710000052', 'moulya.sultana@gmail.com'),
('Rony Rahman', 'Cashier', 'Uttara', '01710000053', 'rony.rahman@gmail.com'),
('Farzana Akter', 'Loan Officer', 'Uttara', '01710000054', 'farzana.akter@gmail.com'),
('Shahriar Khan', 'IT Officer', 'Uttara', '01710000055', 'shahriar.khan@gmail.com'),
('Lamia Rahman', 'Customer Service Officer', 'Uttara', '01710000056', 'lamia.rahman@gmail.com'),

-- Motijheel
('Rashedul Karim', 'Manager', 'Motijheel', '01710000057', 'rashedul.karim@gmail.com'),
('Nazia Jahan', 'Accountant', 'Motijheel', '01710000058', 'nazia.jahan@gmail.com'),
('Irfan Ali', 'Accountant', 'Motijheel', '01710000059', 'irfan.ali@gmail.com'),
('Farida Yasmin', 'Cashier', 'Motijheel', '01710000060', 'farida.yasmin@gmail.com'),
('Kawsar Ahmed', 'Cashier', 'Motijheel', '01710000061', 'kawsar.ahmed@gmail.com'),
('Sumon Rahman', 'Loan Officer', 'Motijheel', '01710000062', 'sumon.rahman@gmail.com'),
('Sultana Akter', 'IT Officer', 'Motijheel', '01710000063', 'sultana.akter@gmail.com'),
('Tasnia Rahman', 'Customer Service Officer', 'Motijheel', '01710000064', 'tasnia.rahman@gmail.com'),

-- Barishal_City
('Mahfuz Alam', 'Manager', 'Barishal_City', '01710000065', 'mahfuz.alam@gmail.com'),
('Sonia Rahman', 'Accountant', 'Barishal_City', '01710000066', 'sonia.rahman@gmail.com'),
('Aminul Islam', 'Accountant', 'Barishal_City', '01710000067', 'aminul.islam@gmail.com'),
('Lima Khatun', 'Cashier', 'Barishal_City', '01710000068', 'lima.khatun@gmail.com'),
('Foysal Hossain', 'Cashier', 'Barishal_City', '01710000069', 'foysal.hossain@gmail.com'),
('Roksana Akter', 'Loan Officer', 'Barishal_City', '01710000070', 'roksana.akter@gmail.com'),
('Habib Rahman', 'IT Officer', 'Barishal_City', '01710000071', 'habib.rahman@gmail.com'),
('Mahira Chowdhury', 'Customer Service Officer', 'Barishal_City', '01710000072', 'mahira.chowdhury@gmail.com'),

-- Tongibari
('Imtiaz Rahman', 'Manager', 'Tongibari', '01710000073', 'imtiaz.rahman@gmail.com'),
('Rafia Akter', 'Accountant', 'Tongibari', '01710000074', 'rafia.akter@gmail.com'),
('Tuhin Hossain', 'Accountant', 'Tongibari', '01710000075', 'tuhin.hossain@gmail.com'),
('Sanjida Sultana', 'Cashier', 'Tongibari', '01710000076', 'sanjida.sultana@gmail.com'),
('Rubel Karim', 'Cashier', 'Tongibari', '01710000077', 'rubel.karim@gmail.com'),
('Mahin Islam', 'Loan Officer', 'Tongibari', '01710000078', 'mahin.islam@gmail.com'),
('Sharmin Yasmin', 'IT Officer', 'Tongibari', '01710000079', 'sharmin.yasmin@gmail.com'),
('Rasel Chowdhury', 'Customer Service Officer', 'Tongibari', '01710000080', 'rasel.chowdhury@gmail.com');

SELECT * FROM Employees;

CREATE TABLE Transactions (
    Transaction_ID INT PRIMARY KEY AUTO_INCREMENT,
    Account_ID INT,
    Transaction_Type VARCHAR(20), 
    Amount Double,
    Transaction_Date timestamp,
    Description TEXT,
    FOREIGN KEY (Account_ID) REFERENCES Accounts(Account_ID)
);
INSERT INTO Transactions (Account_ID, Transaction_Type, Amount, Transaction_Date, Description) VALUES
(1, 'Deposit', 5000.00, '2023-02-01', 'Salary Deposit'),
(2, 'Withdraw', 2000.00, '2023-03-01', 'ATM Cash'),
(3, 'Deposit', 3000.00, '2023-03-15', 'Remittance'),
(4, 'Withdraw', 1500.00, '2023-04-01', 'Bill Payment'),
(5, 'Deposit', 7000.00, '2023-04-20', 'Savings'),
(6, 'Deposit', 10000.00, '2023-05-01', 'Loan Installment'),
(7, 'Withdraw', 2500.00, '2023-05-15', 'Shopping'),
(8, 'Deposit', 8000.00, '2023-06-01', 'Salary'),
(9, 'Deposit', 4000.00, '2023-06-12', 'Bonus'),
(10, 'Withdraw', 5000.00, '2023-06-25', 'Travel Expense'),
(11, 'Deposit', 9000.00, '2023-07-10', 'Salary'),
(12, 'Deposit', 15000.00, '2023-07-20', 'Loan Payment'),
(13, 'Withdraw', 3000.00, '2023-08-10', 'Groceries'),
(14, 'Deposit', 6000.00, '2023-08-25', 'Savings'),
(15, 'Withdraw', 2000.00, '2023-09-10', 'Shopping'),
(16, 'Deposit', 5000.00, '2023-09-20', 'Initial Deposit'),
(17, 'Withdraw', 2000.00, '2023-09-25', 'ATM Cash'),
(18, 'Deposit', 7000.00, '2023-09-30', 'Salary Credit'),
(19, 'Deposit', 10000.00, '2023-10-05', 'Loan Installment'),
(20, 'Withdraw', 1500.00, '2023-10-08', 'Utility Bill Payment'),
(21, 'Deposit', 8000.00, '2023-10-13', 'Savings Deposit'),
(22, 'Deposit', 4000.00, '2023-10-15', 'Bonus Credit'),
(23, 'Withdraw', 3000.00, '2023-10-20', 'Loan Repayment'),
(24, 'Deposit', 6000.00, '2023-10-24', 'Salary Deposit'),
(25, 'Deposit', 5000.00, '2023-10-28', 'Savings Account Top-up');

SELECT * FROM Transactions;

CREATE TABLE Loans (
    Loan_ID INT PRIMARY KEY AUTO_INCREMENT,
    Client_ID INT,
    Loan_Type VARCHAR(50), 
    Amount INT,
    Interest_Rate double Default 500.00,
    Issue_Date DATE,
    Due_Date DATE,
    Current_Status VARCHAR(20),
    foreign key(Client_ID)references Clients(Client_ID)
);
INSERT INTO Loans (Client_ID, Loan_Type, Amount, Interest_Rate, Issue_Date, Due_Date, Current_Status) VALUES
(1, 'Microfinance', 20000, 5.0, '2023-02-01', '2024-02-01', 'Active'),
(3, 'Education', 30000, 6.0, '2023-03-10', '2025-03-10', 'Active'),
(5, 'Housing', 80000, 7.0, '2023-04-15', '2028-04-15', 'Active'),
(6, 'Business', 100000,9.0,'2023-04-15', '2028-04-15', 'Active'),
(19, 'Personal Loan', 50000.00, 9.5, '2023-10-03', '2024-10-03', 'Active'),
(23, 'Home Loan', 150000.00, 8.2, '2023-10-19', '2028-10-19', 'Active');
SELECT * FROM Loans;

CREATE TABLE Loan_Payments (
    Payment_ID INT PRIMARY KEY AUTO_INCREMENT,
    Loan_ID INT,
    Payment_Date DATE,
    Amount_Paid double,
    Remaining_Balance double,
    FOREIGN KEY (Loan_ID) REFERENCES Loans(Loan_ID)
);
INSERT INTO Loan_Payments (Loan_ID, Payment_Date, Amount_Paid, Remaining_Balance) VALUES
(1, '2023-03-01', 5000, 15000),
(1, '2023-04-01', 5000, 10000),
(2, '2023-04-15', 3000, 12000),
(3, '2023-05-01', 10000, 40000),
(4, '2023-06-10', 7000, 18000);

SELECT * FROM Loan_Payments;

CREATE TABLE BankCards (
    Card_ID INT PRIMARY KEY AUTO_INCREMENT,
    Account_ID INT,
    Card_Number VARCHAR(20) UNIQUE,
    Card_Type VARCHAR(20), 
    Expiry_Date DATE,
    FOREIGN KEY (Account_ID) REFERENCES Accounts(Account_ID)
);
INSERT INTO BankCards (Account_ID, Card_Number, Card_Type, Expiry_Date) VALUES
(1, '520000000001', 'Debit', '2027-01-31'),
(2, '520000000002', 'Debit', '2027-02-28'),
(3, '520000000003', 'Debit', '2027-03-31'),
(4, '520000000004', 'Credit', '2027-04-30'),
(5, '520000000005', 'Debit', '2027-05-31'),
(6, '520000000006', 'Credit', '2027-06-30'),
(7, '520000000007', 'Debit', '2027-07-31'),
(8, '520000000008', 'Debit', '2027-08-31'),
(10, '520000000010', 'Debit', '2027-10-31'),
(11, '520000000011', 'Credit', '2027-11-30'),
(16, '520000000016', 'Debit', '2027-09-30'),
(17, '520000000017', 'Debit', '2027-09-30'),
(18, '520000000018', 'Debit', '2027-10-31'),
(19, '520000000019', 'Credit', '2027-10-31'),
(20, '520000000020', 'Debit', '2027-10-31'),
(21, '520000000021', 'Debit', '2027-11-30'),
(22, '520000000022', 'Debit', '2027-11-30'),
(23, '520000000023', 'Credit', '2027-11-30'),
(24, '520000000024', 'Debit', '2027-12-31'),
(25, '520000000025', 'Debit', '2027-12-31');
SELECT * FROM BankCards;

UPDATE Clients 
SET Full_Name = 'Rahim Uddin Ali'
WHERE Client_ID = 1;
SELECT * FROM Clients;

UPDATE Branches
SET Manager_ID = (
    SELECT Employee_ID FROM Employees
    WHERE Branch = Branches.Branch AND Designation = 'Manager'
);
SELECT * FROM Branches;

DELETE FROM Employees
WHERE Full_Name = 'Dr. Yunus' AND Designation = 'Chairman';
SELECT * FROM Employees;

ALTER TABLE Employees
ADD Age INT;
SELECT * FROM Employees;
ALTER TABLE Employees
DROP COLUMN Age;
SELECT * FROM Employees;

ALTER Table Employees
rename column Phone to Contact;
ALTER Table Employees
rename column Employee_ID to EMP_ID;
SELECT * FROM Employees;

SELECT * FROM Branches
ORDER BY Manager_ID;

SELECT * FROM Employees
ORDER BY Designation,EMP_ID,Branch;

