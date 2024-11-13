#!/bin/bash

git add *
git commit -m 'update'
git push --no-verify
cp -r _site/* ../waterbearfieldschool.github.io/
cd ../waterbearfieldschool.github.io/
git add *	
git commit -m 'update'
git push
