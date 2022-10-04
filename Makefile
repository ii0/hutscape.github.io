.PHONY: default serve build projects

default: build list serve

list:
	find _site/tutorials '!' -name '*.html'

serve:
	bundle exec jekyll serve --trace

build:
	bundle exec jekyll build --trace

projects:
	node scripts/query_projects.js
