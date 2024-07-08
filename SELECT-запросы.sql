--вывод трека с максимальной продолжительностью       
SELECT track, track_duration FROM tracks
WHERE track_duration = (SELECT MAX(track_duration) FROM tracks)

--вывод трека с продолжительностью не меннее 3,5 минут 
SELECT track, track_duration FROM tracks
WHERE track_duration >= 210

--вывод сборников, вышедших в период с 2018 по 2020 год включительно
SELECT songs_collection, release_year FROM songs_collections  
WHERE release_year BETWEEN 2018 AND 2020

--вывод исполнителей, с названием из одного слова
SELECT performer FROM musical_performers   
WHERE performer
NOT LIKE '% %'

--вывод треков с названием, содержащим 'my'
SELECT track FROM tracks   
WHERE track
LIKE '%my%'

--вывод количества исполнителей в каждом жанре
SELECT genre, COUNT(performers) FROM genre_performers
GROUP BY genre
ORDER BY COUNT(performers) DESC;

--вывод количества треков в альбомах 2019-2020
SELECT COUNT(track), release_year FROM music_albums ma 
LEFT JOIN tracks t ON ma.id = t.album
WHERE release_year between 2019 and 2020
GROUP BY release_year

--вывод средней продолжительности треков по каждому альбому
SELECT ma.album, AVG(track_duration) FROM music_albums ma 
LEFT JOIN tracks t ON ma.id = t.album
group by ma.album;

--вывод исполнителей, которые не выпустили альбомы в 2020 году
SELECT performer FROM musical_performers mp  
LEFT JOIN performers_albums pa ON mp.id = pa.performers
LEFT JOIN music_albums ma ON ma.id = pa.albums
WHERE performer NOT IN (SELECT performer FROM musical_performers WHERE ma.release_year = 2020) 

--вывод названия сборников, в котором присутствует исполнитель Performer_4
SELECT performer, sc.songs_collection FROM musical_performers mp  
LEFT JOIN performers_albums pa ON mp.id = pa.performers
LEFT JOIN music_albums ma ON ma.id = pa.albums
LEFT join tracks t on t.album = ma.id 
left join collections_tracks ct on t.id = ct.track
left join songs_collections sc on sc.id = ct.songs_collection
where performer = 'performer_4'