#!/bin/sh

NAME="$1"
EMAIL="$2"

[[ -z "$NAME" ]] && echo -n "Enter the name of the person you want to blame : "
[[ -z "$NAME" ]] && read NAME
[[ -z "$EMAIL" ]] && echo -n "Enter the email address of the person you want to blame : "
[[ -z "$EMAIL" ]] && read EMAIL

AUTHOR="$NAME <$EMAIL>"

echo "blaming $AUTHOR"

GIT_COMMITTER_NAME="$NAME" GIT_COMMITTER_EMAIL="$EMAIL" git commit --amend --author="$AUTHOR"

echo "This commit is now in the name of $AUTHOR : $(git show --name-only --oneline | head -n 1)"
