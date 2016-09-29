#!/bin/sh

# FITS
FITS_VERSION=0.10.0
DOWNLOAD_URL="http://projects.iq.harvard.edu/files/fits/files/fits-${FITS_VERSION}.zip"
sudo curl $DOWNLOAD_URL > fits.zip
sudo unzip fits.zip
sudo chmod a+x fits-$FITS_VERSION/*.sh
cd fits-$FITS_VERSION/
mv *.properties *.sh lib tools xml /usr/local/bin
cd ..
rm -r fits-$FITS_VERSION/
rm fits.zip