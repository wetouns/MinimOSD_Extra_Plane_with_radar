#!/bin/sh

version(){
    cat MinimOsd_Extra/version.h | grep 'RELEASE_NUM' | awk '{print $3}'
}

RELEASE='Released/FW_+_Char'
BUILD='MinimOsd_Extra/build-atmega328'
BUILD2='MinimOsd_Extra/build-atmega644'


cp -f README.md CHANGELOG.md CHANGELOG_RU.md ./Released
rm -rf $BUILD
rm -rf $BUILD2
rm -f osd_latest.zip
zip -r osd_latest.zip Released


git add . -A
git commit
git push
