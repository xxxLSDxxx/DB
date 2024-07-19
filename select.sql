--Название и продолжительность самого длительного трека.
select title,duration from tracks 
where duration = (select max(duration) from tracks) ;

--Название треков, продолжительность которых не менее 3,5 минут.
select title,duration from tracks
where duration >= 3.5*60;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно
select title from collections 
where  year between '2018' and '2020';

--Исполнители, чьё имя состоит из одного слова.
select  name from artists  where name not like '% %';

--Название треков, которые содержат слово «мой» или «my»
--1 вариант
select title,duration from tracks
where title ilike 'my %'
or title ilike '% my'
or title ilike '% my %'
or title ilike 'my';
--2 вариант
SELECT title FROM tracks WHERE title ~~*'my %'
or title ~~*'% my'
or title ~~*'% my %'
or title ~~*'my';
--3 вариант
SELECT title FROM tracks where (string_to_array (lower(title),' ')&&array['my']);

--Количество исполнителей в каждом жанре
SELECT genres.name, COUNT(artist_genres.artist_id) AS artist_count FROM genres
LEFT JOIN artist_genres ON genres.id = artist_genres.genre_id
LEFT JOIN artists ON artist_genres.artist_id = artists.id
GROUP BY genres.name;

--Количество треков, вошедших в альбомы 2019–2020 годов
SELECT COUNT(tracks.id) AS track_count FROM tracks
LEFT JOIN albums ON tracks.album_id = albums.id
WHERE albums.year BETWEEN 2019 AND 2020;

--Средняя продолжительность треков по каждому альбому.
SELECT albums.title, AVG(tracks.duration) AS avg_duration FROM albums
LEFT JOIN tracks ON albums.id = tracks.album_id
GROUP BY albums.title;

--Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT artists.name FROM artists
WHERE artists.name NOT IN (
    SELECT artists.name FROM artists
    JOIN album_artists ON artists.id = album_artists.artist_id
    JOIN albums ON album_artists.album_id = albums.id
    WHERE albums.year = 2020
)
GROUP BY artists.name;

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT collections.title FROM collections
LEFT JOIN collection_tracks ON collections.id = collection_tracks.collection_id
LEFT JOIN tracks ON collection_tracks.track_id = tracks.id
LEFT JOIN albums ON tracks.album_id = albums.id
LEFT JOIN album_artists ON albums.id = album_artists.album_id
LEFT JOIN artists ON album_artists.artist_id = artists.id
WHERE artists.name = 'Гуф'
GROUP BY collections.title;
