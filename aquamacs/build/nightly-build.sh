#!/bin/sh

cd ~/Nightly/Cocoa23/aquamacs-emacs.git

AQUAMACS_ROOT=`pwd`/aquamacs

rm aquamacs-build.log
date >>aquamacs-build.log

git checkout -f master >>aquamacs-build.log  2>>aquamacs-build.log
git pull origin master  >>aquamacs-build.log  2>>aquamacs-build.log

./build-aquamacs >>aquamacs-build.log 2>>aquamacs-build.log

date >>aquamacs-build.log

# now we have 

LOG=`pwd`/aquamacs-build.log
APP=`pwd`/nextstep/Aquamacs.app
DATE=`date +"%Y-%b-%d-%a-%H%M"`

# zip it up

mkdir builds 2>/dev/null
tar cjf builds/Aquamacs-${DATE}.tar.bz2 ${APP}

# copy to server

aquamacs/build/copy-build-to-server.sh $DATE # $SHORTDATE  - only needed for GNU Emacs