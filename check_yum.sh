#!/bin/bash

YUMCHK=$(yum check-update)
case $? in
0)
        echo "No system updates available"
        exit 0
        ;;
100)
        echo "System update available!"
        echo $YUMCHK
        exit 1
        ;;
*)
        echo "Unknown exit code - Check manually"
        exit 3
        ;;
esac