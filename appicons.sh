#!/bin/bash

# --- functions ------------------------------------------------------

function init
{
  DIR="Icons"

  mkdir $DIR

  # iTunes
  sips -s format png -z 1024 1024 $FILE --out $DIR/iTunesArtwork@2x.png
  sips -s format png -z 512 512   $FILE --out $DIR/iTunesArtwork.png

  # ios
  sips -s format png -z 144 144   $FILE --out $DIR/Icon-72@2x.png
  sips -s format png -z 72 72     $FILE --out $DIR/Icon-72.png
  sips -s format png -z 114 114   $FILE --out $DIR/Icon@2x.png
  sips -s format png -z 57 57     $FILE --out $DIR/Icon.png

  # android
  sips -s format png -z 36 36     $FILE --out $DIR/icon-36-ldpi.png
  sips -s format png -z 48 48     $FILE --out $DIR/icon-48-mdpi.png
  sips -s format png -z 72 72     $FILE --out $DIR/icon-72-hdpi.png
  sips -s format png -z 96 96     $FILE --out $DIR/icon-96-xhdpi.png

  # blackberry
  sips -s format png -z 80 80     $FILE --out $DIR/icon-80.png

  # webos
  sips -s format png -z 64 64     $FILE --out $DIR/icon-64.png

  # webos
  sips -s format png -z 48 48     $FILE --out $DIR/icon-48.png
  sips -s format png -z 173 173   $FILE --out $DIR/icon-173.png
}

function file_error
{
  echo "Error: Sorry but the file does not exist!"
}

function hint
{
  echo "This script is used to convert one large iOS App icon (1024x1024) into smaller ones based on iOS Human Interface Guidelines"
  echo ""
  echo " Usages:"
  echo "   bash appicons.sh file.png"
  echo ""
}

# --- main -----------------------------------------------------------

FILE=$1

if [ -e "$FILE" ]; then
  init
elif [ "$FILE" ]; then
  file_error
else
  hint
fi
