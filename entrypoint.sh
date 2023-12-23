#!/usr/bin/env bash

mkdir /root/.ssh
echo "${KEY}" > /root/.ssh/key
chmod 0600 /root/.ssh/key
ssh-keyscan -H -p "${PORT}" "${HOST}" > /root/.ssh/known_hosts
ssh -i /root/.ssh/key -p "${PORT}" "${USER}@${HOST}" "${COMMAND}"
