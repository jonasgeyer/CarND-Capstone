#!/bin/bash
#
# Script to launch the CarND Unity simulator

THIS_DIR="$(cd "$(dirname "$0")" && pwd -P && cd - > /dev/null)"
USER_PROFILE="$THIS_DIR/profile.tmp"

if [ ! -f "$USER_PROFILE" ];
  then
    echo "What is the full path to your Unity simulator?"
    read unity_path

    # write to the file
    echo "$unity_path" > $USER_PROFILE
  else
    unity_path=$(cat "$USER_PROFILE")
fi
echo "Path:"
echo $unity_path
echo "this_dir"
echo $THIS_DIR
echo "USER_PROFILE"
echo $USER_PROFILE

$unity_path
