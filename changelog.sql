-- liquibase formatted sql changeLogId:801204f4-7e7d-4f93-9c83-83f7a1d02e06

-- changeset SteveZ:1588216
CREATE TABLE department 
(
  id INT NOT NULL, 
  name VARCHAR(50) NOT NULL, 
  active BIT(1) DEFAULT 1 NULL, 
  CONSTRAINT PK_DEPARTMENT PRIMARY KEY (id))
  ;
--rollback drop table department;
