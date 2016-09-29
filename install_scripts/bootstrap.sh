###
# BASICS
###

SHARED_DIR=$1

if [ -f "$SHARED_DIR/install_scripts/config" ]; then
  . $SHARED_DIR/install_scripts/config
fi

cd

# brightbox ruby ppa
apt-get install software-properties-common
apt-add-repository ppa:brightbox/ruby-ng

# mapnik ppa
add-apt-repository ppa:mapnik/nightly-2.3

# Update
apt-get -y update && apt-get -y upgrade

# SSH
apt-get -y install openssh-server

# Build tools
apt-get -y install build-essential

# Git vim
apt-get -y install git vim

# Wget, curl, zip, and unzip
apt-get -y install wget curl zip unzip

# install mapnik and gdal
apt-get -y install libmapnik libmapnik-dev mapnik-utils
apt-get -y install mapnik-input-plugin-gdal mapnik-input-plugin-ogr
apt-get -y install gdal-bin
