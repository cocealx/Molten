#!/bin/bash
function logit(){
    echo "[php_build] $@" 1>&2
}
#main
wget http://www.valgrind.org/downloads/valgrind-3.14.0.tar.bz2 && tar -xjvf valgrind-3.14.0.tar.bz2 && cd valgrind-3.14.0/ && ./configure && make &&make install

ret=$?

if [ $ret -eq 0 ]; then
logit "[valgrind-3.14.0] done"
else
logit "[valgrind-3.14.0] fail"
fi
