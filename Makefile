# ref: https://saattrupdan.github.io/2022-08-28-makefu/
# ref: https://gist.github.com/MarkWarneke/2e26d7caef237042e9374ebf564517ad
-include .env

# run on host
init:
	python docker.py startd --build

# run on host
in:
	python docker.py

# run on host
root:
	python docker.py --root

# run on host
copy_git:
	cp ~/.gitconfig $(CONTAINER_HOME)/ && cp -r ~/.ssh $(CONTAINER_HOME)/

# run in container
ui:
	cd src/client && yarn && yarn dev --host