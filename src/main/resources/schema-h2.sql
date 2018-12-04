
CREATE TABLE CATEGORY(ID INT PRIMARY KEY, NAME VARCHAR(255));

CREATE TABLE AUTHOR (
  ID INT,
  USERNAME VARCHAR(255),
  FIRSTNAME VARCHAR(255),
  LASTNAME VARCHAR(255),
  EMAIL VARCHAR(255),
  PASSWORD VARCHAR(255),
  PHONE VARCHAR(255)
);

CREATE TABLE POST(
  ID BIGINT,
  TITLE VARCHAR(255),
  CREATED DATE,
  PEREX VARCHAR(255),
  CONTENT CLOB,
  AUTHOR_ID BIGINT,

  FOREIGN KEY (AUTHOR_ID) REFERENCES AUTHOR(ID)
);

CREATE TABLE COMMENT(
  ID BIGINT,
  CREATED DATE,
  USERNAME VARCHAR(255),
  CONTENT VARCHAR(255),
  POST_ID BIGINT,

  FOREIGN KEY (POST_ID) REFERENCES POST(ID)
);

CREATE TABLE POST_CATEGORY(
  POST_ID BIGINT,
  CATEGORY_ID BIGINT,

  FOREIGN KEY (POST_ID) REFERENCES POST(ID),
  FOREIGN KEY (CATEGORY_ID) REFERENCES CATEGORY(ID)
);
