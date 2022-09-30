#!/bin/bash

ansible  ansible4,ansible3,ansible5 -m yum -a "name=httpd state=absent"
ansible  ansible4,ansible3,ansible5 -m user -a "name=adhoc state=absent"
ansible  ansible4,ansible3,ansible5 -m file -a "path=/tmp/directory state=absent"

