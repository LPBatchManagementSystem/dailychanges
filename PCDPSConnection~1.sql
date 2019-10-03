CREATE TABLE "PCDPS"."ADMINLOGIN" 
   (	"ADMIN_ID" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"ADMIN_PASSWORD" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	 CONSTRAINT "ADMINLOGIN_PK" PRIMARY KEY ("ADMIN_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
  
  CREATE TABLE "PCDPS"."MENTORLOGIN" 
   (	"MENTOR_ID" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"MENTOR_PASSWORD" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	 CONSTRAINT "TABLE1_PK" PRIMARY KEY ("MENTOR_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
  
  CREATE TABLE "PCDPS"."LPLOGIN" 
   (	"LP_ID" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"LP_PASSWORD" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	 CONSTRAINT "LPLOGIN_PK" PRIMARY KEY ("LP_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
  
  CREATE TABLE "PCDPS"."ADMIN" 
   (	"ADMIN_ID" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"FIRST_NAME" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"LAST_NAME" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"DOB" DATE NOT NULL ENABLE, 
	"PHONE_NUMBER" NUMBER(20,0) NOT NULL ENABLE, 
	"EMAIL" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"ROLE" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	 CONSTRAINT "ADMIN_PK" PRIMARY KEY ("ADMIN_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
  
  CREATE TABLE "PCDPS"."MENTOR" 
   (	"MENTOR_ID" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"FIRST_NAME" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"LAST_NAME" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"DOB" DATE NOT NULL ENABLE, 
	"PHONE_NUMBER" NUMBER(20,0) NOT NULL ENABLE, 
	"EMAIL" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"ROLE" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"BATCH_ID" VARCHAR2(20 BYTE) DEFAULT null, 
	 CONSTRAINT "MENTOR_PK" PRIMARY KEY ("MENTOR_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
  
  CREATE TABLE "PCDPS"."LP" 
   (	"LP_ID" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"FIRST_NAME" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"LAST_NAME" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"DOB" DATE NOT NULL ENABLE, 
	"PHONE_NUMBER" NUMBER(20,0) NOT NULL ENABLE, 
	"EMAIL" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"ROLE" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"BATCH_ID" VARCHAR2(20 BYTE) DEFAULT null, 
	 CONSTRAINT "LP_PK" PRIMARY KEY ("LP_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
  
  CREATE TABLE "PCDPS"."BATCH" 
   (	"BATCH_ID" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"BATCH_CAPACITY" NUMBER(20,0) NOT NULL ENABLE, 
	"BATCH_MENTOR_ID" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"BATCH_VENUE_ID" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"BATCH_STARTDATE" DATE NOT NULL ENABLE, 
	"BATCH_STATUS" NUMBER(20,0) NOT NULL ENABLE, 
	 CONSTRAINT "BATCH_PK" PRIMARY KEY ("BATCH_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE, 
	 CONSTRAINT "FK_BATCH_MENTOR" FOREIGN KEY ("BATCH_ID")
	  REFERENCES "PCDPS"."BATCH" ("BATCH_ID") ENABLE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
  
  CREATE TABLE "PCDPS"."VENUE" 
   (	"VENUE_ID" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"VENUE_NAME" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"VENUE_CAPACITY" NUMBER(20,0) NOT NULL ENABLE, 
	"VENUE_LOCATION" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	 CONSTRAINT "VENUE_PK" PRIMARY KEY ("VENUE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;