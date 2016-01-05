# Gitlab Ansible

Ansible script to install gitlab in ubuntu 1404 following this doc:

https://about.gitlab.com/downloads/#ubuntu1404

## Gitlab installation

First of all is recommended to edit vars in playbook.yml and cert.sh
template. Once those files are changed, we can run the playbook.yml.

```
$ ansible-playbook -i inventory playbook.yml
```

Once it's installed we can view the gitlab interface going to:

https://HOSTNAME

To disable signup it can be done from the interface, use the user "root"
with the configured password:

https://HOSTNAME/admin/application_settings

## Needed sudo perms to install:

 * apt-get
 * dpgk
 * /tmp/cert.sh
 * gitlab-ctl
