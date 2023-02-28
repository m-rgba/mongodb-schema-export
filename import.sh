#!/bin/bash

# Install Node for Variety.js
echo "📥 Installing Node..."
# apt-get update && apt-get install --assume-yes --no-install-recommends --no-install-suggests curl git && apt-get clean
# curl --silent --show-error --output - https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash > /dev/null
# export NVM_DIR="$HOME/.nvm"  && \. "$NVM_DIR/nvm.sh" && source $HOME/.nvm/nvm.sh && nvm install v18.14.2 && nvm install-latest-npm

apt-get update -yq && apt-get upgrade -yq && apt-get install -yq curl git
curl -sL https://deb.nodesource.com/setup_18.x | bash -
apt-get install -yq nodejs build-essential
npm install -g npm

# Install Variety.js
echo "📥 Installing Variety.js..."
npm install -g variety-cli

# Weather Dummy Data
echo "📡 Importing Weather Data..."
mongoimport --host localhost --username root --password example --authenticationDatabase=admin --db sample_weatherdata --collection data --file /tmp/dummy_data/sample_weatherdata/data.json
echo "✅ Weather Data Imported"

# Training Dummy Data
echo "📡 Importing Training Data..."
mongoimport --host localhost --username root --password example --authenticationDatabase=admin --db sample_training --collection companies --file /tmp/dummy_data/sample_training/companies.json
mongoimport --host localhost --username root --password example --authenticationDatabase=admin --db sample_training --collection grades --file /tmp/dummy_data/sample_training/grades.json
mongoimport --host localhost --username root --password example --authenticationDatabase=admin --db sample_training --collection inspections --file /tmp/dummy_data/sample_training/inspections.json
mongoimport --host localhost --username root --password example --authenticationDatabase=admin --db sample_training --collection posts --file /tmp/dummy_data/sample_training/posts.json
mongoimport --host localhost --username root --password example --authenticationDatabase=admin --db sample_training --collection routes --file /tmp/dummy_data/sample_training/routes.json
mongoimport --host localhost --username root --password example --authenticationDatabase=admin --db sample_training --collection stories --file /tmp/dummy_data/sample_training/stories.json
mongoimport --host localhost --username root --password example --authenticationDatabase=admin --db sample_training --collection trips --file /tmp/dummy_data/sample_training/trips.json
mongoimport --host localhost --username root --password example --authenticationDatabase=admin --db sample_training --collection tweets --file /tmp/dummy_data/sample_training/tweets.json
mongoimport --host localhost --username root --password example --authenticationDatabase=admin --db sample_training --collection zips --file /tmp/dummy_data/sample_training/zips.json
echo "✅ Training Data Imported"

# Supplies Dummy Data
echo "📡 Importing Supplies Data..."
mongoimport --host localhost --username root --password example --authenticationDatabase=admin --db sample_supplies --collection sales --file /tmp/dummy_data/sample_supplies/sales.json
echo "✅ Supplies Data Imported"

# MFlix Dummy Data
echo "📡 Importing MFlix Data..."
mongoimport --host localhost --username root --password example --authenticationDatabase=admin --db sample_mflix --collection comments --file /tmp/dummy_data/sample_mflix/comments.json
mongoimport --host localhost --username root --password example --authenticationDatabase=admin --db sample_mflix --collection movies --file /tmp/dummy_data/sample_mflix/movies.json
mongoimport --host localhost --username root --password example --authenticationDatabase=admin --db sample_mflix --collection sessions --file /tmp/dummy_data/sample_mflix/sessions.json
mongoimport --host localhost --username root --password example --authenticationDatabase=admin --db sample_mflix --collection theaters --file /tmp/dummy_data/sample_mflix/theaters.json
mongoimport --host localhost --username root --password example --authenticationDatabase=admin --db sample_mflix --collection users --file /tmp/dummy_data/sample_mflix/users.json
echo "✅ MFlix Data Imported"

# Geospacial Dummy Data
echo "📡 Importing Geospacial Data..."
mongoimport --host localhost --username root --password example --authenticationDatabase=admin --db sample_geospatial --collection shipwrecks --file /tmp/dummy_data/sample_geospatial/shipwrecks.json
echo "✅ Geospacial Data Imported"

# Analytics Dummy Data
echo "📡 Importing Analytics Data..."
mongoimport --host localhost --username root --password example --authenticationDatabase=admin --db sample_analytics --collection accounts --file /tmp/dummy_data/sample_analytics/accounts.json
mongoimport --host localhost --username root --password example --authenticationDatabase=admin --db sample_analytics --collection customers --file /tmp/dummy_data/sample_analytics/customers.json
mongoimport --host localhost --username root --password example --authenticationDatabase=admin --db sample_analytics --collection transactions --file /tmp/dummy_data/sample_analytics/transactions.json
echo "✅ Analytics Data Imported"

# AirBnb Dummy Data
echo "📡 Importing AirBnb Data..."
mongoimport --host localhost --username root --password example --authenticationDatabase=admin --db sample_airbnb --collection listingsAndReviews --file /tmp/dummy_data/sample_airbnb/listingsAndReviews.json
echo "✅ AirBnb Data Imported"