#!/bin/bash

if [ -e ".git/rebase-apply/original-commit" ];then
  target=$(cat .git/rebase-apply/original-commit)
elif [ -e ".git/rebase-merge/stopped-sha" ];then
  target=$(cat .git/rebase-merge/stopped-sha)
elif [ -e ".git/sequencer/todo" ];then
  target=$(cat .git/sequencer/todo | head -1 | awk '{print $2}')
fi

git l -1 $target "$@"
