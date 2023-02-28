## Start MongoDB
- Throws up a sample MongoDB container.
- Mongo Express is a lightweight GUI for MongoDB - is commented out in docker-compose file.
- Mongo Compass is another good first-party UI for browsing MongoDB.
    - https://www.mongodb.com/products/compass
    - URI for Compass is: mongodb://root:example@localhost:27017

```bash
docker-compose up -d
```

## Import Dummy Data + Install Node / Variety
- Check `docker log mongodb` to make sure database is initialized, then run below.
- Imports a few sample databases from Mongo Atlas.
- Loads NodeJS and the Variety CLI
    - https://github.com/variety/variety-cli from
    - https://github.com/variety/variety
        - Should probably split this out into its own container, wanted to make it easy for review though.

```bash
docker exec mongodb ./import.sh
```

## Export Schema with Variety
- Sample of using Variety to export MongoDB schema (will output to mounted `./schema` volume).

```bash
# Sample from database `same_mflix` / collection `movies`.
# 3 levels deep / first 5000 records.
docker exec mongodb bash -c "\
variety sample_mflix/movies \
--outputFormat='json' --maxDepth 3 --limit 5000 --quiet \
--host localhost --username root --password example --authenticationDatabase=admin --port 27017 > /tmp/schemas/mflix_movies.json"
```