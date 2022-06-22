#!/bin/bash
vagrant global-status | awk '/poweroff/{print $1}' | xargs -r -d '\n' -n 1 -- vagrant destroy -f
