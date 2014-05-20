# install system dependencies
apt-get update
apt-get install python-software-properties -y
apt-add-repository -y ppa:chris-lea/node.js
apt-get -y update

# nodejs is for serving assets through rails (no therubyracer)
# build-essential is to compile ruby
# libqt4-dev libqtwebkit-dev are for capybara-webkit
# libpq-dev is for postgres

apt-get -y install curl git-core nodejs build-essential libqt4-dev libqtwebkit-dev postgresql libpq-dev

# setup postgres
sudo pg_dropcluster --stop 9.1 main
sudo pg_createcluster --locale=en_US.utf8 --start 9.1 main
sudo -u postgres createuser --superuser vagrant
