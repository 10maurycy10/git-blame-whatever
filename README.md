# git-blame-whatever

A script to spoof a git commit author.

# usage: ./blame.sh [Author's name [Author's email]]

- You must fist create a commit normally.

If the name or email is not provided, the script will prompt you for it.

You may then edit the commit message (or just exit your editor).

Run ``git log`` to check if it worked.
