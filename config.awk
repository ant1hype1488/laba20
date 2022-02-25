#!/usr/bin/env awk

BEGIN{FS="/"} {
    printf "Рейс: " $1 ",";
    if (($3-$2) > 0){
        print " время полета: " $3-$2
    } else{
        print " время полета: " 24-$2 + $3
    }  
}