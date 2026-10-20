# Database of Grameen Bank

A relational database design for a Grameen Bank-style banking system. The repository contains the SQL script that creates the schema, plus an ER diagram and a schema diagram.

## Database design

The script creates a database named `GrameenBank` with eight tables:

| Table | 
|---|
| `Clients` |
| `Branches` |
| `Accounts` |
| `Employees` |
| `Transactions` |
| `Loans` |
| `Loan_Payments` |
| `BankCards` |

See the diagrams below for columns and relationships.

## Repository contents

| File | Description |
|---|---|
| `GrameenBankProject (1).sql` | SQL script that creates the database and all tables |
| `ER Diagram for grammenbank.pdf` | Entity-relationship diagram |
| `schenadiagram.pdf` | Schema diagram |

## Getting started

The script uses MySQL syntax (`AUTO_INCREMENT`), so it is meant for MySQL or MariaDB.

Prerequisite: a running MySQL server and the `mysql` command-line client.

Windows PowerShell:

```powershell
cmd /c 'mysql -u root -p < "GrameenBankProject (1).sql"'
```

macOS, Linux or Git Bash:

```bash
mysql -u root -p < "GrameenBankProject (1).sql"
```

Then check the result:

```sql
USE GrameenBank;
SHOW TABLES;
```