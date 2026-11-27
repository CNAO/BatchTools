#!/bin/bash

LocalPath=${PWD}
ServerPath=/DATA/backups/${USER}/`basename ${LocalPath}`
ServerName=svpvclus05.cnao.group

# PUSH over ssh (-n: dry-run)
rsync -avzhP ${LocalPath}/ ${USER}@${ServerName}:${ServerPath}

# PULL over ssh (-n: dry-run)
# rsync -avzhP -n ${USER}@${ServerName}:${ServerPath}/ ${LocalPath}
