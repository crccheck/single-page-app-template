CSS_STYLE=compressed


all: clean build

clean:
	rm -rf app.css
	rm -rf app.js

build: app.css app.js


dev:
	@$(MAKE) -s -j3 devdev

devdev: server csswatch jswatch


server:
	python -m SimpleHTTPServer $(PORT)


app.css:
	sass --compass --update --style compressed sass/app.sass:app.css

csswatch:
	sass --compass --watch --style $(CSS_STYLE) sass/app.sass:app.css


# npm install coffee-script
app.js:
	coffee --compile -j app.coffee coffee/

jswatch:
	coffee --watch --compile -j app.coffee coffee/


.PHONY: all clean build dev devdev server csswatch jswatch
