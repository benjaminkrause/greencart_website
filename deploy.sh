#!/bin/bash

# make sure, we are in the right directory
cd $(dirname "$0")

rsync -e "ssh -p 22222" -avz -f "- deploy.sh" -f"- .git*" -f"+ *" --delete ./ greencart@212.87.44.119:~/html/
