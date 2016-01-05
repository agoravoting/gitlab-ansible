#!/bin/bash

C=ES
ST=Madrid
L=Madrid
O=Agoravoting
OU=Agora_Voting_SL
HOST={{ gitlab_hostname }}
CN={{ gitlab_hostname }}
EMAIL=info@agoravoting.com

cd /etc/gitlab/ssl/
CERT_PATH=/etc/gitlab/ssl/cert.pem

if [ ! -f $CERT_PATH ]
then
  openssl req -nodes -x509 -newkey rsa:4096 -keyout key-nopass.pem -out cert.pem -days 365 <<EOF
${C}
${ST}
${L}
${O}
${OU}
${CN}
${EMAIL}
EOF
  mv key-nopass.pem {{ gitlab_hostname }}.key
  mv cert.pem {{ gitlab_hostname }}.crt
fi
