#!/bin/sh
/usr/bin/socat -d -d TCP-LISTEN:$localport,fork,reuseaddr TCP:$address:$remoteport
