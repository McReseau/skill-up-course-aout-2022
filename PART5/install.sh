#!/bin/bash

ansible  ansible4,ansible3,ansible5 -m yum -a "name=httpd state=present"
ansible  ansible4,ansible3,ansible5 -m service -a "name=httpd state=started enabled=yes"
ansible  ansible4,ansible3,ansible5 -m user -a "name=adhoc state=present"
#ansible  ansible4,ansible3,ansible5 -m command -a "mkdir -p /tmp/directory"
ansible  ansible4,ansible3,ansible5 -m file -a "path=/tmp/directory state=directory"
ansible  ansible4,ansible3,ansible5 -m copy  -a "src=/etc/hosts dest=/tmp/directory"
ansible  ansible4,ansible3,ansible5 -m shell -a "id adhoc && cat /tmp/directory/hosts"
