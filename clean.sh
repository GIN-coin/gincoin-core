#!/bin/bash
make clean
find . -type d -name .deps -exec rm -rf {} \;
find . -type f -name "*.o" -exec rm {} \;
find . -type f -name "*.lo" -exec rm {} \;
find . -type f -name "Makefile" -exec rm {} \;
find . -type f -name "Makefile.in" -exec rm {} \;
find . -type f -name "configure" -exec rm {} \;
find . -type f -name "configure.status" -exec rm {} \;
find . -type f -name "config.cache" -exec rm {} \;