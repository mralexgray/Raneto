#!/usr/bin/make

# The first command listed is the default
.PHONY: default
default: clean install build;

.PHONY: clean
clean:

	# Remove Temporary Files
	rm -rf ./node_modules/;

.PHONY: install
install:

	# Install Node.js Modules
	npm install;

.PHONY: build
build:

	# Run Gulp
	./node_modules/gulp/bin/gulp.js;

.PHONY: start
start:

	# Start HTTP Server
	node example/server.js

.PHONY: deploy
deploy:

	# Install Node.js Modules (Production)
	npm install --production; true;

	# Run Gulp
	./node_modules/gulp/bin/gulp.js; true;
