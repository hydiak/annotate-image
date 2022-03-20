#!/bin/bash

FILE_NAME=$1
TARGET=$2
SIZE=$3
TEXT=$4

width=`identify -format %w ${FILE_NAME}`; \
  convert -background '#0008' -fill white -gravity center -size ${width}x${SIZE} \
          caption:"${TEXT}" \
          ${FILE_NAME} +swap -gravity south -composite ${TARGET}