CREATE TABLE IF NOT EXISTS genres(
id SERIAL PRIMARY KEY,
name VARCHAR(30) NOT NULL UNIQUE
);


CREATE TABLE IF NOT EXISTS musicians(
id SERIAL PRIMARY KEY,
name VARCHAR(30),
genre_id INTEGER references genres(id)
);


CREATE TABLE IF NOT EXISTS albums(
id SERIAL PRIMARY KEY,
name VARCHAR(50) NOT NULL,
release_year INTEGER CHECK(year>1975),
musician_id INTEGER references musicians(id)
);
		  
			  
CREATE TABLE IF NOT EXISTS tracks(
id SERIAL PRIMARY KEY,
name VARCHAR(40) NOT NULL UNIQUE,
time INTEGER CHECK(length>0),
album_id INTEGER references albums(id)
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

CREATE TABLE IF NOT EXISTS collections(
id SERIAL PRIMARY KEY,
name VARCHAR(50) NOT NULL UNIQUE,
release_year INTEGER CHECK(year>1975),
album_id INTEGER references albums(id),
track_id INTEGER references tracks(id)
);

INSERT INTO collections(name, release_year) VALUES('The Greatest Hits', '2008');
INSERT INTO collections(name, release_year) VALUES('Best of the Best', '2023');
INSERT INTO collections(name, release_year) VALUES('Super disco', '2019');
