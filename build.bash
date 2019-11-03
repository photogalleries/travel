#!/bin/bash -e


LOCAL="$HOME/web/photogalleries/travel"
REMOTE="photogalleries/travel"

SRC='/Volumes/Data/Pictures'
DST='photos'

source $HOME/web/functions


cd $LOCAL
setup

ln -s $SRC/places/* $DST
ln -s "$SRC/pictures-3/Geology, US/" "$DST/U.S. Geology"
ln -s "$SRC/pictures-4/0001/" "$DST/U.S. Cities"


build $LOCAL $REMOTE


if [ ${PUSH:-1} -ne 0 ]; then
    push $LOCAL $REMOTE
fi


