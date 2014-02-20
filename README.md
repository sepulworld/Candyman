Candyman
========

A library that will extract LDAP directory information and transform it to YAML

###Layout

#####LDAP.rb
Class (Variables Need defaults for network port, IP/Hostname, Connection User)
- connection, session handling
Class 
- directory output request, filtering

#####Candyman_wrangle.rb
Class 
- Def return ```directory.ldif```
- Def backup ```directory.ldif```
- Def integrity check ```directory.ldif```
Class 
- Def full converion of ```directory.ldif``` to YAML
- Def user conversion of ```directory.ldif``` to YAML, for Puppet consumpsion (uid, gid, home directory, groups, sshkeys)
- Def YAML header, version

#####Candymand_log.rb
Class (variables include logfile path, default to system log)
- Def logging events

#####Candyman_run.rb
Class 
- Initializer, perhaps called by upstart or init script, background process
