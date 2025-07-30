/*
===============================================================================
DDL Script: Create Silver Tables
===============================================================================
Script Purpose:
    This script creates tables in the 'silver' schema, dropping existing tables 
    if they already exist.
	  Run this script to re-define the DDL structure of 'silver' Tables
===============================================================================
*/

IF OBJECT_ID('silver.crm_cust_info', 'U') IS NOT NULL
    DROP TABLE silver.crm_cust_info;
GO 

CREATE TABLE silver.crm_cust_info (
    cst_id              INT,
    cst_firstname       NVARCHAR(50),
    cst_lastname        NVARCHAR(50),
    cst_phone           INT,
    cst_email           NVARCHAR(50),
    cst_address         NVARCHAR(50),
    cst_joindate        DATEو 
   dwh_create_date    DATETIME2 DEFAULT GETDATE()
  
);
GO

IF OBJECT_ID('silver.crm_accounts', 'U') IS NOT NULL
    DROP TABLE silver.crm_accounts;
GO

CREATE TABLE silver.crm_accounts (
    account_id     INT,
    customer_id    INT,
    account_type   NVARCHAR(50),
    balance        INT,
    create_date    DATEو
    dwh_create_date    DATETIME2 DEFAULT GETDATE()
   
);
GO

IF OBJECT_ID('silver.crm_cards', 'U') IS NOT NULL
    DROP TABLE silver.crm_cards;
GO

CREATE TABLE silver.crm_cards (
    card_id        INT,
    customer_id    INT,
    card_type      NVARCHAR(50),
    card_number    INT,
    issued_date    DATE,
    expiration_date  DATEو
    dwh_create_date    DATETIME2 DEFAULT GETDATE()
);
GO
  

IF OBJECT_ID('silver.crm_loans', 'U') IS NOT NULL
    DROP TABLE silver.crm_loans;
GO

CREATE TABLE  silver.crm_loans (
    loan_id         INT,
    customer_id     INT,
    loan_type       NVARCHAR(50),
    loan_amount     INT,
    interest_rate   INT, 
    loan_start_date DATE,
    loan_end_date  DATEو
   dwh_create_date    DATETIME2 DEFAULT GETDATE()

  
);
GO

IF OBJECT_ID('silver.crm_support_calls', 'U') IS NOT NULL
    DROP TABLE silver.crm_support_calls;
GO

CREATE TABLE silver.crm_support_calls (
    call_id         INT,
    customer_id     NVARCHAR(50),
    call_date       DATE,
    issue_type     NVARCHAR(50),
    resolved       NVARCHAR(50),
   dwh_create_date    DATETIME2 DEFAULT GETDATE()
   
);
GO  

IF OBJECT_ID('silver.crm_transactions', 'U') IS NOT NULL
    DROP TABLE silver.crm_transactions;
GO

CREATE TABLE silver.crm_transactions (
    transaction_id        INT,
    account_id            INT,
   transaction_type       NVARCHAR(50),
    amount                INT,
    transaction_date      DATE, 
   dwh_create_date    DATETIME2 DEFAULT GETDATE()
   
);
GO
