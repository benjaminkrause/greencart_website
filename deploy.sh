#!/bin/bash

# make sure, we are in the right directory
cd $(dirname "$0")

git push origin gfg && rsync -e "ssh -p 22222" -avz -f "- deploy.sh" -f"- .git*" -f"+ *" --delete ./ greencart-gfg@212.87.44.119:~/html/
