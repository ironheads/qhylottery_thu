#!/usr/bin/env sh

# abort on errors
set -e

# build
yarn build

# navigate into the build output directory
# cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

# git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
git push -f git@github.com:ironheads/ironheads.github.io.git main

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:ironheads/qhylottery_thu.git master:master

git subtree push --prefix dist origin gh-pages

cd -