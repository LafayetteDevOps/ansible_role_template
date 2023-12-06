# ansible_role_template
An Ansible role_ template written in Jinja2 to quickly generate an Ansible role.   The Ansible role repo can then be used 
within the Ansible Automation Platform or on the CLI.  

Typically, `ansible-galaxy` is used to generate the structual layout and is still used in this case.  A Makefile is used 
to automate this process by simplifying the task, saving time, and avoiding errors.  

Dependencies:
---

- GNU make needs to be installed within the environment. 
- Two variables need to be defined on the CLI: repo_name, name
    - `repo_name` is the location of the newly created project repo.  `name` is the name of the role.

Usage:
---

All role repos will have a `role_` prefix.  Please use underscores for name separation.  

Generate a new project repo for an Apache install:

`$ make repo_path=/root/Repos1 name=apache_install run`

- This will create a new project repo at `/root/Repos1` with the name `role_apache_install`.

Remove same project repo, Apache install, in case of an error, etc. 

`$ make repo_path=/root/Repos1 name=apache_install clean `

- This will remove the created repository in its entirety.  Be diligent.

Info - ansible-galaxy
---

Clone the Jinja2 template skeleton in the current working directory, and use Ansible-Galaxy to generate the new Ansible role_ repository.

An example using the parameter `--role-skeleton` and path to this repository.

`$ ansible-galaxy init --role-skeleton=</path/to/template/skeleton> role_apache_install`

An example creating the same role_ but to a different location, Repositories.

`$ ansible-galaxy init --init-path Repositories --role-skeleton=</path/to/template/skeleton> role_apache_install`

Help:
---

`$ make --help` \
`$ ansible-galaxy init --help`