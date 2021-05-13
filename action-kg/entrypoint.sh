#!/bin/sh -l

# Download file living in external repository
curl -o  main_external.py https://raw.githubusercontent.com/kev12123/github-actions-test/main/main.py

# Download file living in current repository
curl -o main.py https://raw.githubusercontent.com/kev12123/hello-github-actions/main/main.py

if cmp -s main_external.py main.py
then
   export FILE_DIFF=0
else
   export FILE_DIFF=1
   mv main_external.py ../main.py
fi

