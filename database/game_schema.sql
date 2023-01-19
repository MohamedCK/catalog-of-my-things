CREATE TABLE game (
  id int GENERATED BY DEFAULT AS IDENTITY,
  publish_date date,
  last_played_at date,
  multiplayer boolean,
  PRIMARY KEY(id)
);

CREATE TABLE author (
  id int GENERATED BY DEFAULT AS IDENTITY,
  book_id int
  fname varchar,
  lname varchar,
  PRIMARY KEY(id)
  CONSTRAINT fk_game_label
    FOREIGN KEY (book_id)
    REFERENCES book(id)
);
