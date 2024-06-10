CREATE TABLE IF NOT EXISTS genre(
id SERIAL PRIMARY KEY,
name VARCHAR(30) NOT NULL
);


CREATE TABLE IF NOT EXISTS musician(
id SERIAL PRIMARY KEY,
name VARCHAR(30) NOT NULL
);


CREATE TABLE IF NOT EXISTS album(
id SERIAL PRIMARY KEY,
name VARCHAR(50) NOT NULL,
release_year INTEGER NOT NULL CHECK(1975<=release_year<=2024)
);
		  
			  
CREATE TABLE IF NOT EXISTS track(
id SERIAL PRIMARY KEY,
name VARCHAR(40) NOT NULL,
time INTEGER CHECK (length>0),
album_id INTEGER NOT NULL references album(id)
);


CREATE TABLE IF NOT EXISTS collection(
id SERIAL PRIMARY KEY,
name VARCHAR(50) NOT NULL,
release_year INTEGER CHECK(1975<=release_year<=2024)
);

CREATE TABLE IF NOT EXISTS genreMusician(
id SERIAL PRIMARY KEY,
musician_id INTEGER references musician(id),
genre_id INTEGER references genre(id),
constraint pk PRIMARY KEY(musician_id, genre_id)
);

CREATE TABLE collectionTrack(
id SERIAL PRIMARY KEY,
track_id INTEGER NOT NULL REFERENCES track(id),
collection_id INTEGER NOT NULL REFERENCES collection(id),
CONSTRAINT pk PRIMARY KEY (track_id, collection_id)
);

CREATE TABLE IF NOT EXISTS albumMusician(
id SERIAL PRIMARY KEY,
musician_id INTEGER NOT NULL REFERENCES musician(id),
album_id INTEGER NOT NULL REFERENCES album(id),
CONSTRAINT id PRIMARY KEY (musician_id, album_id)
);

INSERT INTO genres(name) VALUES('Rock');
INSERT INTO genres(name) VALUES('Pop');
INSERT INTO genres(name) VALUES('Hip Hop');
INSERT INTO genres(name) VALUES('R&B');

INSERT INTO musicians(name) VALUES('Queen');
INSERT INTO musicians(name) VALUES('Linkin Park');
INSERT INTO musicians(name) VALUES('Король и Шут');
INSERT INTO musicians(name) VALUES('Сплин');
INSERT INTO musicians(name) VALUES('Michael Jackson');
INSERT INTO musicians(name) VALUES('Madonna');
INSERT INTO musicians(name) VALUES('Zivert');
INSERT INTO musicians(name) VALUES('Katty Perry');
INSERT INTO musicians(name) VALUES('Макс Корж');
INSERT INTO musicians(name) VALUES('"Eminem');
INSERT INTO musicians(name) VALUES('Noize MC');
INSERT INTO musicians(name) VALUES('The Weekend');
INSERT INTO musicians(name) VALUES('Sade');
INSERT INTO musicians(name) VALUES('K-Maro');
INSERT INTO musicians(name) VALUES('Pink');

INSERT INTO tracks(name,time) VALUES('Bohemian Rhapsody','5.55');
INSERT INTO tracks(name,time) VALUES('Somebody to love','4.56');
INSERT INTO tracks(name,time) VALUES('Лесник','3.11');
INSERT INTO tracks(name,time) VALUES('Кукла колдуна','4.17');
INSERT INTO tracks(name,time) VALUES('From the inside','2.53');
INSERT INTO tracks(name,time) VALUES('Numb','3.05');
INSERT INTO tracks(name,time) VALUES('Рай в шалаше','3.13');
INSERT INTO tracks(name,time) VALUES('Остаемся зимовать','3.38');
INSERT INTO tracks(name,time) VALUES('Beat it','4.18');
INSERT INTO tracks(name,time) VALUES('Smooth Criminal','4.17');
INSERT INTO tracks(name,time) VALUES('Frozen','6.07');
INSERT INTO tracks(name,time) VALUES('','4.02');
INSERT INTO tracks(name,time) VALUES('Roulette','3.18');
INSERT INTO tracks(name,time) VALUES('Beverly Hills','3.39');
INSERT INTO tracks(name,time) VALUES('Fly','3.13');
INSERT INTO tracks(name,time) VALUES('В легких тает дым','3.03');
INSERT INTO tracks(name,time) VALUES('Renegade','5.07');
INSERT INTO tracks(name,time) VALUES('Stan','6.44');
INSERT INTO tracks(name,time) VALUES('Выдыхай','3.12');
INSERT INTO tracks(name,time) VALUES('In Your Eyes','3.57');
INSERT INTO tracks(name,time) VALUES('The Hills','4.02');
INSERT INTO tracks(name,time) VALUES('Smooth Operator','4.18');
INSERT INTO tracks(name,time) VALUES('Good old days','3.53');
INSERT INTO tracks(name,time) VALUES('Femme Like U','4.41');
INSERT INTO tracks(name,time) VALUES('Hate me','3.20');
INSERT INTO tracks(name,time) VALUES('Try','4.07');

INSERT INTO albums(name, release_year) VALUES('A Night At The Opera','1975');
INSERT INTO albums(name, release_year) VALUES('A Day at the Races','1976');
INSERT INTO albums(name, release_year) VALUES('Будь как дома, Путник...','1997');
INSERT INTO albums(name, release_year) VALUES('Акустический альбом','1999');
INSERT INTO albums(name, release_year) VALUES('Meteora','2004');
INSERT INTO albums(name, release_year) VALUES('Meteora','2003');
INSERT INTO albums(name, release_year) VALUES('Резонанс. Часть 1','2014');
INSERT INTO albums(name, release_year) VALUES('25-й кадр','2001');
INSERT INTO albums(name, release_year) VALUES('Thriller','1983');
INSERT INTO albums(name, release_year) VALUES('Bad','1988');
INSERT INTO albums(name, release_year) VALUES('Ray of Light','1998');
INSERT INTO albums(name, release_year) VALUES('True Blue','1987');
INSERT INTO albums(name, release_year) VALUES('Witness','2017');
INSERT INTO albums(name, release_year) VALUES('Vinyl #1','2019');
INSERT INTO albums(name, release_year) VALUES('Vinyl #1','2019');
INSERT INTO albums(name, release_year) VALUES('Жить в кайф','2013');
INSERT INTO albums(name, release_year) VALUES('The Blueprint','2001');
INSERT INTO albums(name, release_year) VALUES('The Marshall Mathers LP','2000');
INSERT INTO albums(name, release_year) VALUES('The Greatest Hits Vol. 1','2007');
INSERT INTO albums(name, release_year) VALUES('After Hours','2020');
INSERT INTO albums(name, release_year) VALUES('Beauty Behind the Madness','2015');
INSERT INTO albums(name, release_year) VALUES('Diamond Life','1984');
INSERT INTO albums(name, release_year) VALUES('Perfect Stranger','2008');
INSERT INTO albums(name, release_year) VALUES('La Good Life','2004');
INSERT INTO albums(name, release_year) VALUES('Trustfall','2023');
INSERT INTO albums(name, release_year) VALUES('The Truth About Love','2012');

INSERT INTO collection(name, release_year) VALUES('The Greatest Hits', '2008');
INSERT INTO collection(name, release_year) VALUES('Best of the Best', '2023');
INSERT INTO collection(name, release_year) VALUES('Super disco', '2019');