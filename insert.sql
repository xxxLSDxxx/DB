-- Добавление жанров
insert into genres (name) values('Металл');
insert into genres (name) values('Шансон');
insert into genres (name) values('Рэп');

--Добавление исполнителей
insert into artists (name) values('Корозия металла');
insert into artists (name) values('Бутырка');
insert into artists (name) values('Гуф');
insert into artists (name) values('СЛОТ');

--Добавление альбомов
insert into albums (title, year) values('Каннибал','1996');
insert into albums (title, year) values('Аттестат','2018');
insert into albums (title, year) values('Дома','2019');

--Добавление Жанров и Исполнителей ID
insert into artist_genres (artist_id, genre_id) values('1','1');
insert into artist_genres (artist_id, genre_id) values('2','2');
insert into artist_genres (artist_id, genre_id) values('3','3');
insert into artist_genres (artist_id, genre_id) values('4','1');

--Добавление Альбомов и Исполнителей ID
insert into album_artists (album_id, artist_id) values('1','1');
insert into album_artists (album_id, artist_id) values('2','2');
insert into album_artists (album_id, artist_id) values('3','3');

--Добавление треков
insert into tracks (title, duration, album_id) values('Танк вампира','5','1');
insert into tracks (title, duration, album_id) values('По этапу','4','2');
insert into tracks (title, duration, album_id) values('Провода','3','3');
insert into tracks (title, duration, album_id) values('Инитро','2','3');
insert into tracks (title, duration, album_id) values('Икона','4','2');
insert into tracks (title, duration, album_id) values('Фантом','6','1');

---для проверки замечаний
insert into tracks (title ,duration , album_id) values('My own','210','1');
insert into tracks (title ,duration , album_id) values('own my','150','1');
insert into tracks (title ,duration , album_id) values('my','250','1');
insert into tracks (title ,duration , album_id) values('oh my god','180','1');
insert into tracks (title ,duration , album_id) values('myself','280','1');
insert into tracks (title ,duration , album_id) values('by myself','380','1');
insert into tracks (title ,duration , album_id) values('bemy self','480','1');
insert into tracks (title ,duration , album_id) values('myself by','330','1');
insert into tracks (title ,duration , album_id) values('by myself by','280','1');
insert into tracks (title ,duration , album_id) values('beemy','211','1');
insert into tracks (title ,duration , album_id) values('premyne','209','1');

--Добавление Сборников
insert into collections (title ,year) values('Топ 100','2020');
insert into collections (title ,year) values('Хиты шансона','2022');
insert into collections (title ,year) values('Уличный хит','2024');
insert into collections (title ,year) values('Легенды русского рока','2025');

--Добавление Сборников и треков ID
insert into collection_tracks (collection_id, track_id) values('1','1');
insert into collection_tracks (collection_id, track_id) values('1','2');
insert into collection_tracks (collection_id, track_id) values('1','3');
insert into collection_tracks (collection_id, track_id) values('1','4');
insert into collection_tracks (collection_id, track_id) values('1','5');
insert into collection_tracks (collection_id, track_id) values('1','6');

insert into collection_tracks (collection_id, track_id) values('2','2');
insert into collection_tracks (collection_id, track_id) values('2','5');

insert into collection_tracks (collection_id, track_id) values('3','3');
insert into collection_tracks (collection_id, track_id) values('3','4');

insert into collection_tracks (collection_id, track_id) values('4','1');
insert into collection_tracks (collection_id, track_id) values('4','5');

