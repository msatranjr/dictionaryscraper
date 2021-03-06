CREATE TABLE IF NOT EXISTS words(
	id INTEGER PRIMARY KEY ASC,
	name TEXT,
	url TEXT
);

CREATE TABLE IF NOT EXISTS definitions(
	id INTEGER PRIMARY KEY ASC, 
	definition TEXT, 
	def_number INTEGER,
	wordid INTEGER,
	FOREIGN KEY(wordId) REFERENCES words(id) 
);

CREATE TABLE IF NOT EXISTS classes(
	id INTEGER PRIMARY KEY ASC,
	class TEXT,
	wordid INTEGER,
	FOREIGN KEY(wordId) REFERENCES words(id)
);

CREATE TABLE IF NOT EXISTS pronounces(
	id INTEGER PRIMARY KEY ASC,
	ipa TEXT,
	wordid INTEGER,
	FOREIGN KEY(wordId) REFERENCES words(id)
);

CREATE TABLE IF NOT EXISTS wotdworthy(
	id INTEGER PRIMARY KEY ASC,
	wordid INTEGER,
	FOREIGN KEY(wordId) REFERENCES words(id)
);

CREATE TABLE IF NOT EXISTS wotdlogs(
	id INTEGER PRIMARY KEY ASC,
	wordid INTEGER,
	guild TEXT,
	FOREIGN KEY(wordid) REFERENCES words(id)
);