CREATE TABLE IF NOT EXISTS EVENT_PUBLICATION
(
  ID               VARCHAR2(36) NOT NULL,
  LISTENER_ID      VARCHAR2(512) NOT NULL,
  EVENT_TYPE       VARCHAR2(512) NOT NULL,
  SERIALIZED_EVENT NVARCHAR2(4000) NOT NULL,
  PUBLICATION_DATE TIMESTAMP(6) NOT NULL,
  COMPLETION_DATE  TIMESTAMP(6) DEFAULT NULL NULL,
  CONSTRAINT EVENT_PUBLICATION_PK PRIMARY KEY(ID)
);
CREATE INDEX IF NOT EXISTS EVENT_PUBLICATION_BY_COMPLETION_DATE_IDX (COMPLETION_DATE);
