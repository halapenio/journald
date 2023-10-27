#!/bin/sh
set -euxo pipefail

git --version
echo $GIT_USERNAME
git config --global user.email "${GIT_EMAIL}"
git config --global user.name "${GIT_NAME}"
git remote set-url origin "https://${GIT_USERNAME}:${GIT_TOKEN}@github.com/${GIT_USERNAME}/${GIT_REPO}.git"
git pull
date >> docker-journal.log
git add .
git commit -m "new date commit from docker journal"
git push
