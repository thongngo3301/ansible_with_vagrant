#!/bin/bash
vagrant global-status | awk '/running/{print $1}' | xargs -r -d '\n' -n 1 -- vagrant halt
