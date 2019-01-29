#!/bin/bash

VENV_NAME=`echo $VIRTUAL_ENV | awk -F'/' '{print $NF}'`

if [ -z "$VENV_NAME" ]
then
    echo "No virtualenv active, exiting."
    exit 0
fi

pip install ipykernel
python -m ipykernel install --user --name $VENV_NAME --display-name $VENV_NAME

pip install jupyter_contrib_nbextensions yapf
