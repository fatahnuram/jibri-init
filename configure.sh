#!/usr/bin/env sh

num=$(echo $HOSTNAME | awk -F- '{print $NF}')

echo "Replacing Loopback with number: ${num}"

sed -i "s/Loopback/${num}/g" /data/.asoundrc

echo "Moving files to jibri home"

mv /data/.asoundrc /home/jibri/.asoundrc
