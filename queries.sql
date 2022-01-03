-- Demonstração de queries realizadas no Athena

SELECT "characters"."name",
       "comics"."title",
       "comics"."description""
FROM "characters"
JOIN "characters_to_comics" ON
     "characters"."characterid" = "characters_to_comics"."characterid"
JOIN "comics" ON "comics"."comicid" = "characters_to_comics"."comicid"


SELECT "characters"."name", COUNT(*)
FROM "characters"
GROUP BY "characters"."name"