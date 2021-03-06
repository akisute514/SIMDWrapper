#!/bin/bash
remote_url=$(git config --get remote.origin.url)
cd build/html
git init
touch .nojekyll
git config --global user.name "circle-ci"
git config --global user.email "<>"
git add -A
git commit -m "[ci skip] deploy documents by circle-ci"
git push -f ${remote_url} master:gh-pages
