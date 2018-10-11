#!/bin/sh

if [ -z "$CONFIG_FILE" ]; then
  echo "CONFIG_FILE env isn't defined";
  exit;
fi

if -f "$CONFIG_FILE.json" -o -f "$CONFIG_FILE" ; then
  echo "$CONFIG_FILE file exists";
else
  echo "Creating a $CONFIG_FILE file based on sample";
  cp config-sample.json config/config.json;
  echo "$CONFIG_FILE file is already available";
fi