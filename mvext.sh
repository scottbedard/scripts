#!/bin/bash

for file in $(find "$PWD" -name "*$1"); do
    echo $file | sed "s/$1$/$2/";
    mv "$file" "`echo $file | sed "s/$1$/$2/"`";
done;
