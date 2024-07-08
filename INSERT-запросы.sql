--вставка 4 исполнителей в таблицу musical_performers 
INSERT INTO musical_performers (performer)
VALUES ('Performer_1 test'),
       ('Performer_2 test'), 
       ('Performer_3'),
       ('performer_4');
      
--вставка 3 жанров в таблицу musical_genre 
INSERT INTO musical_genre (genre)
VALUES ('genre_1'),
       ('genre_2'), 
       ('genre_3');
      
 --вставка жанров и иполнителей в таблицу genre_performers
INSERT INTO genre_performers (genre, performers)
VALUES (1, 1),
       (1, 2), 
       (2, 3),
       (3, 4);

--вставка 3 альбомов в таблицу music_albums 
INSERT INTO  music_albums (album, release_year)
VALUES ('album_1', 2003),
       ('album_2', 2019), 
       ('album_3', 2020);
      
--вставка исполнителей и их альбомов в таблицу performers_albums 
INSERT INTO  performers_albums  (performers, albums)
VALUES (1, 1),
       (2, 1), 
       (3, 2),
       (4, 3);
      
--вставка 6 треков в таблицу tracks 
INSERT INTO  tracks (album, track, track_duration)
VALUES (1, 'track_1_my', 180),
       (1, 'track_2', 195), 
       (2, 'track_3', 210),
       (2, 'my_track_4', 185),
       (3, 'track_5', 190), 
       (3, 'track_6', 250);
      
--вставка 4 сборников в таблицу songs_collections 
INSERT INTO  songs_collections (songs_collection, release_year)
VALUES ('collection_1', 2010),
       ('collection_2', 2020), 
       ('collection_3', 2018),
       ('collection_4', 2019);
      
--вставка сборников и треков в таблицу collections_tracks 
INSERT INTO  collections_tracks  (songs_collection, track)
VALUES (1, 1),
       (1, 2), 
       (2, 3),
       (2, 4),
       (3, 5),
       (4, 6);
       