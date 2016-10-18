#!/bin/bash

# rename all files with a given extention to a different extension
# mvext .foo .bar

for file in $(find "$PWD" -name "*$1"); do
    echo $file | sed "s/$1$/$2/";
    mv "$file" "`echo $file | sed "s/$1$/$2/"`";
done;
