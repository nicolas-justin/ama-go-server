CREATE TABLE IF NOT EXISTS messages (
  "id"              UUID          PRIMARY KEY  NOT NULL  DEFAULT gen_random_uuid(),
  "room_id"         UUID                       NOT NULL,
  "message"         VARCHAR(255)               NOT NULL,
  "reaction_count"  BIGINT                     NOT NULL  DEFAULT 0,
  "answered"        BOOLEAN                    NOT NULL  DEFAULT FALSE,

  FOREIGN KEY (room_id) REFERENCES rooms(id)
);

DROP TABLE IF EXISTS messages;