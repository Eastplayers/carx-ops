#!/bin/bash
set -e 
SECRET_NAME=$1
RESULT_DIRECTORY=${2:-.}

# if [ $# -ne 1 ]; then
#     echo $0: usage: $0 SECRET_NAME
#     exit 1
# fi

kubectl create secret -n staging generic $SECRET_NAME --dry-run=client --from-file=env=configs/env -o yaml 
