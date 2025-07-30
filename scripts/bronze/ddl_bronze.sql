/*
===============================================================================
DDL Script: Create Bronze Tables
===============================================================================
Script Purpose:
    This script creates tables in the 'bronze' schema, dropping existing tables 
    if they already exist.
	  Run this script to re-define the DDL structure of 'bronze' Tables
===============================================================================
*/

IF OBJECT_ID('bronze.crm_cust_info', 'U') IS NOT NULL
    DROP TABLE bronze.crm_cust_info;
GO

CREATE TABLE bronze.crm_cust_info (
    cst_id              INT,
    cst_firstname       NVARCHAR(50),
    cst_lastname        NVARCHAR(50),
    cst_phone           INT,
    cst_email           NVARCHAR(50),
    cst_address         NVARCHAR(50),
    cst_joindate        DATE 
);
GO

IF OBJECT_ID('bronze.crm_accounts', 'U') IS NOT NULL
    DROP TABLE bronze.crm_accounts;
GO

CREATE TABLE bronze.crm_accounts (
    account_id     INT,
    customer_id    INT,
    account_type   NVARCHAR(50),
    balance        INT,
    create_date    DATE
   
);
GO

IF OBJECT_ID('bronze.crm_cards', 'U') IS NOT NULL
    DROP TABLE bronze.crm_cards;
GO

CREATE TABLE bronze.crm_cards (
    card_id        INT,
    customer_id    INT,
    card_type      NVARCHAR(50),
    card_number    INT,
    issued_date    DATE,
    expiration_datev DATE
);
GO
  

IF OBJECT_ID('bronze.crm_loans', 'U') IS NOT NULL
    DROP TABLE bronze.crm_loans;
GO

CREATE TABLE  bronze.crm_loans (
    loan_id         INT,
    customer_id     INT,
    loan_type       NVARCHAR(50),
    loan_amount     INT,
    interest_rate   INT, 
    loan_start_date DATE,
    loan_end_date  DATE

  
);
GO

IF OBJECT_ID('bronze.crm_support_calls', 'U') IS NOT NULL
    DROP TABLE bronze.crm_support_calls;
GO

CREATE TABLE bronze.crm_support_calls (
    call_id         INT,
    customer_id     NVARCHAR(50),
    call_date       DATE,
    issue_type     NVARCHAR(50),
    resolved       NVARCHAR(50),
   
);
GO  

IF OBJECT_ID('bronze.crm_transactions', 'U') IS NOT NULL
    DROP TABLE bronze.crm_transactions;
GO

CREATE TABLE bronze.crm_transactions (
    transaction_id        INT,
    account_id            INT,
   transaction_type       NVARCHAR(50),
    amount                INT,
    transaction_date      DATE, 
   
);
GO
