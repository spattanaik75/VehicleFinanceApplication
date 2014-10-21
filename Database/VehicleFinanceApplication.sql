--------------------------------------------------------
--  File created - Tuesday-October-21-2014   
--------------------------------------------------------
DROP TABLE "TEST"."ACCOUNT_TYPE" cascade constraints;
DROP TABLE "TEST"."ASSET_COST" cascade constraints;
DROP TABLE "TEST"."ASSET_DETAILS" cascade constraints;
DROP TABLE "TEST"."BANKING_DETAIL" cascade constraints;
DROP TABLE "TEST"."CATEGORY" cascade constraints;
DROP TABLE "TEST"."CONTACT_INFO" cascade constraints;
DROP TABLE "TEST"."CUSTOMER" cascade constraints;
DROP TABLE "TEST"."DEAL_DETAILS" cascade constraints;
DROP TABLE "TEST"."DOCUMENTS_SUBMITTED" cascade constraints;
DROP TABLE "TEST"."FINANCIAL_APPLICATION" cascade constraints;
DROP TABLE "TEST"."PAYMENT_METHOD" cascade constraints;
DROP TABLE "TEST"."PAYMENT_TYPE" cascade constraints;
DROP TABLE "TEST"."PERSONAL_INFO" cascade constraints;
DROP TABLE "TEST"."USERS" cascade constraints;
--------------------------------------------------------
--  DDL for Table ACCOUNT_TYPE
--------------------------------------------------------

  CREATE TABLE "TEST"."ACCOUNT_TYPE" 
   (	"ACCOUNT_TYPE_ID" NUMBER, 
	"ACCOUNT_TYPE_DESC" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ASSET_COST
--------------------------------------------------------

  CREATE TABLE "TEST"."ASSET_COST" 
   (	"ASSER_COST_ID" NUMBER, 
	"PURCHASE_PRICE" NUMBER, 
	"EXTRAS_TOTAL" NUMBER, 
	"DEPOSIT" NUMBER, 
	"TERMS" NUMBER, 
	"BALLOON_PERCENTAGE" NUMBER, 
	"ADMIN_FEES" NUMBER, 
	"DEALER_AMT" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ASSET_DETAILS
--------------------------------------------------------

  CREATE TABLE "TEST"."ASSET_DETAILS" 
   (	"ASSET_DETAILS_ID" NUMBER, 
	"CATEGORY_ID" NUMBER, 
	"IS_NEW_CAR" NUMBER(*,0), 
	"MAKE_DESC" VARCHAR2(20 BYTE), 
	"MODEL_NAME" VARCHAR2(20 BYTE), 
	"KM_TRAVELLED" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table BANKING_DETAIL
--------------------------------------------------------

  CREATE TABLE "TEST"."BANKING_DETAIL" 
   (	"BANKING_DETAIL_ID" NUMBER, 
	"BANK_NAME" VARCHAR2(20 BYTE), 
	"ACCOUNT_HOLDER_NAME" VARCHAR2(20 BYTE), 
	"ACCOUNT_NUMBER" NUMBER, 
	"ACCOUNT_TYPE_ID" NUMBER, 
	"BRANCH_CODE" VARCHAR2(20 BYTE), 
	"DATE_CHANGED" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CATEGORY
--------------------------------------------------------

  CREATE TABLE "TEST"."CATEGORY" 
   (	"CATEGORY_ID" NUMBER, 
	"CATEGORY_DESC" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CONTACT_INFO
--------------------------------------------------------

  CREATE TABLE "TEST"."CONTACT_INFO" 
   (	"CONTACT_ID" NUMBER, 
	"EMAIL" VARCHAR2(20 BYTE), 
	"CELL_NUM" NUMBER, 
	"ADDRESS_LINE_1" VARCHAR2(20 BYTE), 
	"ADDRESS_LINE_2" VARCHAR2(20 BYTE), 
	"ADDRESS_LINE_3" VARCHAR2(20 BYTE), 
	"ADDRESS_LINE_4" VARCHAR2(20 BYTE), 
	"AREA_CODE" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CUSTOMER
--------------------------------------------------------

  CREATE TABLE "TEST"."CUSTOMER" 
   (	"CUST_ID" NUMBER, 
	"PERSON_ID" NUMBER, 
	"CONTACT_ID" NUMBER, 
	"USER_ID" NUMBER, 
	"BANKING_DETAIL_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DEAL_DETAILS
--------------------------------------------------------

  CREATE TABLE "TEST"."DEAL_DETAILS" 
   (	"DEAL_DETAILS_ID" NUMBER, 
	"PAYMENT_TYPE_ID" NUMBER, 
	"PAYMENT_FREQ" VARCHAR2(20 BYTE), 
	"PAYMENT_METHOD_ID" NUMBER, 
	"IS_FIXED_INTEREST_RATE" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DOCUMENTS_SUBMITTED
--------------------------------------------------------

  CREATE TABLE "TEST"."DOCUMENTS_SUBMITTED" 
   (	"DOCUMENTS_SUBMITTED_ID" NUMBER, 
	"IDENTITY_DOCUMENT" VARCHAR2(20 BYTE), 
	"DRIVING_LICENSE" VARCHAR2(20 BYTE), 
	"BANK_STATEMENTS" VARCHAR2(20 BYTE), 
	"PROOF_OF_ADDRESS" VARCHAR2(20 BYTE), 
	"INSURANCE_PARTY_LETTER" VARCHAR2(20 BYTE), 
	"DEALERSHIP_QUOTE" VARCHAR2(20 BYTE), 
	"EMPLOYER_PAYSLIP" VARCHAR2(20 BYTE), 
	"DATE_SUBMITTED" DATE, 
	"DATE_MODIFIED" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table FINANCIAL_APPLICATION
--------------------------------------------------------

  CREATE TABLE "TEST"."FINANCIAL_APPLICATION" 
   (	"FINANCIAL_APPLICATION_ID" NUMBER(20,0), 
	"DATE_CREATED" DATE, 
	"CUST_ID" NUMBER, 
	"ASSET_COST_ID" NUMBER, 
	"ASSET_DETAILS_ID" NUMBER, 
	"DEAL_DETAILS_ID" NUMBER, 
	"IS_QUALIFIED" NUMBER(*,0), 
	"IS_APPROVED" NUMBER(*,0), 
	"DOCUMENTS_SUBMITTED_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PAYMENT_METHOD
--------------------------------------------------------

  CREATE TABLE "TEST"."PAYMENT_METHOD" 
   (	"PAYMENT_METHOD_ID" NUMBER, 
	"PAYMENT_METHOD_DESC" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PAYMENT_TYPE
--------------------------------------------------------

  CREATE TABLE "TEST"."PAYMENT_TYPE" 
   (	"PAYMENT_TYPE_ID" NUMBER, 
	"PAYMENT_TYPE_DESC" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PERSONAL_INFO
--------------------------------------------------------

  CREATE TABLE "TEST"."PERSONAL_INFO" 
   (	"PERSON_ID" NUMBER, 
	"FIRST_NAMES" VARCHAR2(20 BYTE), 
	"LAST_NAME" VARCHAR2(20 BYTE), 
	"GENDER" VARCHAR2(20 BYTE), 
	"DOB" DATE, 
	"ID_NUM" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "TEST"."USERS" 
   (	"USER_ID" NUMBER, 
	"USERNAME" VARCHAR2(20 BYTE), 
	"USER_PASS" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into TEST.ACCOUNT_TYPE
SET DEFINE OFF;
REM INSERTING into TEST.ASSET_COST
SET DEFINE OFF;
REM INSERTING into TEST.ASSET_DETAILS
SET DEFINE OFF;
REM INSERTING into TEST.BANKING_DETAIL
SET DEFINE OFF;
REM INSERTING into TEST.CATEGORY
SET DEFINE OFF;
REM INSERTING into TEST.CONTACT_INFO
SET DEFINE OFF;
REM INSERTING into TEST.CUSTOMER
SET DEFINE OFF;
REM INSERTING into TEST.DEAL_DETAILS
SET DEFINE OFF;
REM INSERTING into TEST.DOCUMENTS_SUBMITTED
SET DEFINE OFF;
REM INSERTING into TEST.FINANCIAL_APPLICATION
SET DEFINE OFF;
REM INSERTING into TEST.PAYMENT_METHOD
SET DEFINE OFF;
REM INSERTING into TEST.PAYMENT_TYPE
SET DEFINE OFF;
REM INSERTING into TEST.PERSONAL_INFO
SET DEFINE OFF;
REM INSERTING into TEST.USERS
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index FINANCIAL_APPLICATION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEST"."FINANCIAL_APPLICATION_PK" ON "TEST"."FINANCIAL_APPLICATION" ("FINANCIAL_APPLICATION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CUSTOMER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEST"."CUSTOMER_PK" ON "TEST"."CUSTOMER" ("CUST_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index ASSET_COST_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEST"."ASSET_COST_PK" ON "TEST"."ASSET_COST" ("ASSER_COST_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PAYMENT_TYPE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEST"."PAYMENT_TYPE_PK" ON "TEST"."PAYMENT_TYPE" ("PAYMENT_TYPE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index ASSET_DETAILS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEST"."ASSET_DETAILS_PK" ON "TEST"."ASSET_DETAILS" ("ASSET_DETAILS_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index USERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEST"."USERS_PK" ON "TEST"."USERS" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index DEAL_DETAILS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEST"."DEAL_DETAILS_PK" ON "TEST"."DEAL_DETAILS" ("DEAL_DETAILS_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PERSONAL_INFO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEST"."PERSONAL_INFO_PK" ON "TEST"."PERSONAL_INFO" ("PERSON_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index DOCUMENTS_SUBMITTED_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEST"."DOCUMENTS_SUBMITTED_PK" ON "TEST"."DOCUMENTS_SUBMITTED" ("DOCUMENTS_SUBMITTED_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CONTACT_INFO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEST"."CONTACT_INFO_PK" ON "TEST"."CONTACT_INFO" ("CONTACT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index ACCOUNT_TYPE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEST"."ACCOUNT_TYPE_PK" ON "TEST"."ACCOUNT_TYPE" ("ACCOUNT_TYPE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PAYMENT_METHOD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEST"."PAYMENT_METHOD_PK" ON "TEST"."PAYMENT_METHOD" ("PAYMENT_METHOD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CATEGORY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEST"."CATEGORY_PK" ON "TEST"."CATEGORY" ("CATEGORY_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index BANKING_DETAIL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEST"."BANKING_DETAIL_PK" ON "TEST"."BANKING_DETAIL" ("BANKING_DETAIL_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table FINANCIAL_APPLICATION
--------------------------------------------------------

  ALTER TABLE "TEST"."FINANCIAL_APPLICATION" MODIFY ("FINANCIAL_APPLICATION_ID" NOT NULL ENABLE);
  ALTER TABLE "TEST"."FINANCIAL_APPLICATION" MODIFY ("DATE_CREATED" NOT NULL ENABLE);
  ALTER TABLE "TEST"."FINANCIAL_APPLICATION" MODIFY ("CUST_ID" NOT NULL ENABLE);
  ALTER TABLE "TEST"."FINANCIAL_APPLICATION" MODIFY ("ASSET_COST_ID" NOT NULL ENABLE);
  ALTER TABLE "TEST"."FINANCIAL_APPLICATION" MODIFY ("ASSET_DETAILS_ID" NOT NULL ENABLE);
  ALTER TABLE "TEST"."FINANCIAL_APPLICATION" MODIFY ("DEAL_DETAILS_ID" NOT NULL ENABLE);
  ALTER TABLE "TEST"."FINANCIAL_APPLICATION" MODIFY ("IS_QUALIFIED" NOT NULL ENABLE);
  ALTER TABLE "TEST"."FINANCIAL_APPLICATION" MODIFY ("IS_APPROVED" NOT NULL ENABLE);
  ALTER TABLE "TEST"."FINANCIAL_APPLICATION" ADD CONSTRAINT "FINANCIAL_APPLICATION_PK" PRIMARY KEY ("FINANCIAL_APPLICATION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PAYMENT_METHOD
--------------------------------------------------------

  ALTER TABLE "TEST"."PAYMENT_METHOD" MODIFY ("PAYMENT_METHOD_ID" NOT NULL ENABLE);
  ALTER TABLE "TEST"."PAYMENT_METHOD" MODIFY ("PAYMENT_METHOD_DESC" NOT NULL ENABLE);
  ALTER TABLE "TEST"."PAYMENT_METHOD" ADD CONSTRAINT "PAYMENT_METHOD_PK" PRIMARY KEY ("PAYMENT_METHOD_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table BANKING_DETAIL
--------------------------------------------------------

  ALTER TABLE "TEST"."BANKING_DETAIL" MODIFY ("BANKING_DETAIL_ID" NOT NULL ENABLE);
  ALTER TABLE "TEST"."BANKING_DETAIL" MODIFY ("BANK_NAME" NOT NULL ENABLE);
  ALTER TABLE "TEST"."BANKING_DETAIL" MODIFY ("ACCOUNT_HOLDER_NAME" NOT NULL ENABLE);
  ALTER TABLE "TEST"."BANKING_DETAIL" MODIFY ("ACCOUNT_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "TEST"."BANKING_DETAIL" MODIFY ("ACCOUNT_TYPE_ID" NOT NULL ENABLE);
  ALTER TABLE "TEST"."BANKING_DETAIL" MODIFY ("BRANCH_CODE" NOT NULL ENABLE);
  ALTER TABLE "TEST"."BANKING_DETAIL" MODIFY ("DATE_CHANGED" NOT NULL ENABLE);
  ALTER TABLE "TEST"."BANKING_DETAIL" ADD CONSTRAINT "BANKING_DETAIL_PK" PRIMARY KEY ("BANKING_DETAIL_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DEAL_DETAILS
--------------------------------------------------------

  ALTER TABLE "TEST"."DEAL_DETAILS" MODIFY ("DEAL_DETAILS_ID" NOT NULL ENABLE);
  ALTER TABLE "TEST"."DEAL_DETAILS" MODIFY ("PAYMENT_TYPE_ID" NOT NULL ENABLE);
  ALTER TABLE "TEST"."DEAL_DETAILS" MODIFY ("PAYMENT_FREQ" NOT NULL ENABLE);
  ALTER TABLE "TEST"."DEAL_DETAILS" MODIFY ("PAYMENT_METHOD_ID" NOT NULL ENABLE);
  ALTER TABLE "TEST"."DEAL_DETAILS" MODIFY ("IS_FIXED_INTEREST_RATE" NOT NULL ENABLE);
  ALTER TABLE "TEST"."DEAL_DETAILS" ADD CONSTRAINT "DEAL_DETAILS_PK" PRIMARY KEY ("DEAL_DETAILS_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ASSET_COST
--------------------------------------------------------

  ALTER TABLE "TEST"."ASSET_COST" MODIFY ("ASSER_COST_ID" NOT NULL ENABLE);
  ALTER TABLE "TEST"."ASSET_COST" MODIFY ("PURCHASE_PRICE" NOT NULL ENABLE);
  ALTER TABLE "TEST"."ASSET_COST" MODIFY ("EXTRAS_TOTAL" NOT NULL ENABLE);
  ALTER TABLE "TEST"."ASSET_COST" MODIFY ("DEPOSIT" NOT NULL ENABLE);
  ALTER TABLE "TEST"."ASSET_COST" MODIFY ("TERMS" NOT NULL ENABLE);
  ALTER TABLE "TEST"."ASSET_COST" ADD CONSTRAINT "ASSET_COST_PK" PRIMARY KEY ("ASSER_COST_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PAYMENT_TYPE
--------------------------------------------------------

  ALTER TABLE "TEST"."PAYMENT_TYPE" ADD CONSTRAINT "PAYMENT_TYPE_PK" PRIMARY KEY ("PAYMENT_TYPE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "TEST"."PAYMENT_TYPE" MODIFY ("PAYMENT_TYPE_DESC" NOT NULL ENABLE);
  ALTER TABLE "TEST"."PAYMENT_TYPE" MODIFY ("PAYMENT_TYPE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ASSET_DETAILS
--------------------------------------------------------

  ALTER TABLE "TEST"."ASSET_DETAILS" MODIFY ("ASSET_DETAILS_ID" NOT NULL ENABLE);
  ALTER TABLE "TEST"."ASSET_DETAILS" MODIFY ("CATEGORY_ID" NOT NULL ENABLE);
  ALTER TABLE "TEST"."ASSET_DETAILS" MODIFY ("IS_NEW_CAR" NOT NULL ENABLE);
  ALTER TABLE "TEST"."ASSET_DETAILS" MODIFY ("MAKE_DESC" NOT NULL ENABLE);
  ALTER TABLE "TEST"."ASSET_DETAILS" MODIFY ("MODEL_NAME" NOT NULL ENABLE);
  ALTER TABLE "TEST"."ASSET_DETAILS" MODIFY ("KM_TRAVELLED" NOT NULL ENABLE);
  ALTER TABLE "TEST"."ASSET_DETAILS" ADD CONSTRAINT "ASSET_DETAILS_PK" PRIMARY KEY ("ASSET_DETAILS_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DOCUMENTS_SUBMITTED
--------------------------------------------------------

  ALTER TABLE "TEST"."DOCUMENTS_SUBMITTED" MODIFY ("DOCUMENTS_SUBMITTED_ID" NOT NULL ENABLE);
  ALTER TABLE "TEST"."DOCUMENTS_SUBMITTED" MODIFY ("IDENTITY_DOCUMENT" NOT NULL ENABLE);
  ALTER TABLE "TEST"."DOCUMENTS_SUBMITTED" MODIFY ("DRIVING_LICENSE" NOT NULL ENABLE);
  ALTER TABLE "TEST"."DOCUMENTS_SUBMITTED" MODIFY ("BANK_STATEMENTS" NOT NULL ENABLE);
  ALTER TABLE "TEST"."DOCUMENTS_SUBMITTED" MODIFY ("PROOF_OF_ADDRESS" NOT NULL ENABLE);
  ALTER TABLE "TEST"."DOCUMENTS_SUBMITTED" MODIFY ("DEALERSHIP_QUOTE" NOT NULL ENABLE);
  ALTER TABLE "TEST"."DOCUMENTS_SUBMITTED" MODIFY ("DATE_MODIFIED" NOT NULL ENABLE);
  ALTER TABLE "TEST"."DOCUMENTS_SUBMITTED" ADD CONSTRAINT "DOCUMENTS_SUBMITTED_PK" PRIMARY KEY ("DOCUMENTS_SUBMITTED_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "TEST"."USERS" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "TEST"."USERS" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "TEST"."USERS" MODIFY ("USER_PASS" NOT NULL ENABLE);
  ALTER TABLE "TEST"."USERS" ADD CONSTRAINT "USERS_PK" PRIMARY KEY ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CUSTOMER
--------------------------------------------------------

  ALTER TABLE "TEST"."CUSTOMER" MODIFY ("CUST_ID" NOT NULL ENABLE);
  ALTER TABLE "TEST"."CUSTOMER" MODIFY ("PERSON_ID" NOT NULL ENABLE);
  ALTER TABLE "TEST"."CUSTOMER" MODIFY ("CONTACT_ID" NOT NULL ENABLE);
  ALTER TABLE "TEST"."CUSTOMER" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "TEST"."CUSTOMER" MODIFY ("BANKING_DETAIL_ID" NOT NULL ENABLE);
  ALTER TABLE "TEST"."CUSTOMER" ADD CONSTRAINT "CUSTOMER_PK" PRIMARY KEY ("CUST_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CONTACT_INFO
--------------------------------------------------------

  ALTER TABLE "TEST"."CONTACT_INFO" MODIFY ("CONTACT_ID" NOT NULL ENABLE);
  ALTER TABLE "TEST"."CONTACT_INFO" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "TEST"."CONTACT_INFO" MODIFY ("ADDRESS_LINE_1" NOT NULL ENABLE);
  ALTER TABLE "TEST"."CONTACT_INFO" MODIFY ("ADDRESS_LINE_2" NOT NULL ENABLE);
  ALTER TABLE "TEST"."CONTACT_INFO" MODIFY ("AREA_CODE" NOT NULL ENABLE);
  ALTER TABLE "TEST"."CONTACT_INFO" ADD CONSTRAINT "CONTACT_INFO_PK" PRIMARY KEY ("CONTACT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PERSONAL_INFO
--------------------------------------------------------

  ALTER TABLE "TEST"."PERSONAL_INFO" MODIFY ("PERSON_ID" NOT NULL ENABLE);
  ALTER TABLE "TEST"."PERSONAL_INFO" MODIFY ("FIRST_NAMES" NOT NULL ENABLE);
  ALTER TABLE "TEST"."PERSONAL_INFO" MODIFY ("LAST_NAME" NOT NULL ENABLE);
  ALTER TABLE "TEST"."PERSONAL_INFO" MODIFY ("GENDER" NOT NULL ENABLE);
  ALTER TABLE "TEST"."PERSONAL_INFO" MODIFY ("DOB" NOT NULL ENABLE);
  ALTER TABLE "TEST"."PERSONAL_INFO" MODIFY ("ID_NUM" NOT NULL ENABLE);
  ALTER TABLE "TEST"."PERSONAL_INFO" ADD CONSTRAINT "PERSONAL_INFO_PK" PRIMARY KEY ("PERSON_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ACCOUNT_TYPE
--------------------------------------------------------

  ALTER TABLE "TEST"."ACCOUNT_TYPE" MODIFY ("ACCOUNT_TYPE_ID" NOT NULL ENABLE);
  ALTER TABLE "TEST"."ACCOUNT_TYPE" MODIFY ("ACCOUNT_TYPE_DESC" NOT NULL ENABLE);
  ALTER TABLE "TEST"."ACCOUNT_TYPE" ADD CONSTRAINT "ACCOUNT_TYPE_PK" PRIMARY KEY ("ACCOUNT_TYPE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CATEGORY
--------------------------------------------------------

  ALTER TABLE "TEST"."CATEGORY" MODIFY ("CATEGORY_ID" NOT NULL ENABLE);
  ALTER TABLE "TEST"."CATEGORY" MODIFY ("CATEGORY_DESC" NOT NULL ENABLE);
  ALTER TABLE "TEST"."CATEGORY" ADD CONSTRAINT "CATEGORY_PK" PRIMARY KEY ("CATEGORY_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ASSET_DETAILS
--------------------------------------------------------

  ALTER TABLE "TEST"."ASSET_DETAILS" ADD CONSTRAINT "CATEGORY_ID" FOREIGN KEY ("CATEGORY_ID")
	  REFERENCES "TEST"."CATEGORY" ("CATEGORY_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BANKING_DETAIL
--------------------------------------------------------

  ALTER TABLE "TEST"."BANKING_DETAIL" ADD CONSTRAINT "ACCOUNT_TYPE_ID" FOREIGN KEY ("ACCOUNT_TYPE_ID")
	  REFERENCES "TEST"."ACCOUNT_TYPE" ("ACCOUNT_TYPE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CUSTOMER
--------------------------------------------------------

  ALTER TABLE "TEST"."CUSTOMER" ADD CONSTRAINT "BANKING_DETAIL_ID" FOREIGN KEY ("BANKING_DETAIL_ID")
	  REFERENCES "TEST"."BANKING_DETAIL" ("BANKING_DETAIL_ID") ENABLE;
  ALTER TABLE "TEST"."CUSTOMER" ADD CONSTRAINT "CONTACT_ID" FOREIGN KEY ("CONTACT_ID")
	  REFERENCES "TEST"."CONTACT_INFO" ("CONTACT_ID") ENABLE;
  ALTER TABLE "TEST"."CUSTOMER" ADD CONSTRAINT "PERSON_ID" FOREIGN KEY ("PERSON_ID")
	  REFERENCES "TEST"."PERSONAL_INFO" ("PERSON_ID") ENABLE;
  ALTER TABLE "TEST"."CUSTOMER" ADD CONSTRAINT "USER_ID" FOREIGN KEY ("USER_ID")
	  REFERENCES "TEST"."USERS" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DEAL_DETAILS
--------------------------------------------------------

  ALTER TABLE "TEST"."DEAL_DETAILS" ADD CONSTRAINT "PAYMENT_METHOD_ID" FOREIGN KEY ("PAYMENT_METHOD_ID")
	  REFERENCES "TEST"."PAYMENT_METHOD" ("PAYMENT_METHOD_ID") ENABLE;
  ALTER TABLE "TEST"."DEAL_DETAILS" ADD CONSTRAINT "PAYMENT_TYPE_ID" FOREIGN KEY ("PAYMENT_TYPE_ID")
	  REFERENCES "TEST"."PAYMENT_TYPE" ("PAYMENT_TYPE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FINANCIAL_APPLICATION
--------------------------------------------------------

  ALTER TABLE "TEST"."FINANCIAL_APPLICATION" ADD CONSTRAINT "ASSET_COST_ID" FOREIGN KEY ("ASSET_COST_ID")
	  REFERENCES "TEST"."ASSET_COST" ("ASSER_COST_ID") ENABLE;
  ALTER TABLE "TEST"."FINANCIAL_APPLICATION" ADD CONSTRAINT "ASSET_DETAILS_ID" FOREIGN KEY ("ASSET_DETAILS_ID")
	  REFERENCES "TEST"."ASSET_DETAILS" ("ASSET_DETAILS_ID") ENABLE;
  ALTER TABLE "TEST"."FINANCIAL_APPLICATION" ADD CONSTRAINT "CUST_ID" FOREIGN KEY ("CUST_ID")
	  REFERENCES "TEST"."CUSTOMER" ("CUST_ID") ENABLE;
  ALTER TABLE "TEST"."FINANCIAL_APPLICATION" ADD CONSTRAINT "DEAL_DETAILS_ID" FOREIGN KEY ("DEAL_DETAILS_ID")
	  REFERENCES "TEST"."DEAL_DETAILS" ("DEAL_DETAILS_ID") ENABLE;
  ALTER TABLE "TEST"."FINANCIAL_APPLICATION" ADD CONSTRAINT "DOCUMENTS_SUBMITTED_ID" FOREIGN KEY ("DOCUMENTS_SUBMITTED_ID")
	  REFERENCES "TEST"."DOCUMENTS_SUBMITTED" ("DOCUMENTS_SUBMITTED_ID") ENABLE;
