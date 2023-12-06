# Simple Makefile to prepare an working Ansbile role layout.

# user-defined variables: repo_path, name
repo_path = local_repository
name = name_of_role

# Makefile parameters
default: run

.PHONY: run clean

run: 
	ansible-galaxy init --init-path $(repo_path) --role-skeleton=templates role_$(name)

clean:
	rm -rfi $(repo_path)/role_$(name)