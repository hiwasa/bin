#!/bin/bash

if [ -e ".git/sequencer/todo" ];then
  target=$(cat .git/sequencer/todo | head -1 | awk '{print $2}')
elif [ -e ".git/rebase-merge/stopped-sha" ];then
  target=$(cat .git/rebase-merge/stopped-sha)
elif [ -e ".git/rebase-apply/original-commit" ];then
  target=$(cat .git/rebase-apply/original-commit)
fi

git l -1 $target -p "$@"
