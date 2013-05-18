# My template for developing single page apps

This contains all the boilerplate I might want to use when working on a simple
single page html/css/js app.

## Usage

To start development:

    $ make dev

This does several things:

1. Starts the dev server (port 8000 by default)
2. Starts watching Sass
3. Starts watching CoffeeScript

### CoffeeScript Notes

You can create as many CoffeeScript files in the `coffee` directory, and they
will automatically be concatenated to make `app.js`.


## Requirements

* Web server: python
* Sass (with [Compass][Compass]): `gem install compass`
* [CoffeeScript][CoffeeScript]: `sudo npm install -g coffee-script`
* [Bower][Bower]: `sudo npm install -g bower`

[Compass]: http://compass-style.org/install/
[CoffeeScript]: http://coffeescript.org/
[Bower]: https://github.com/bower/bower

## Examples

### Run the server on a different port

If you wanted to use port 9000, set the PORT environment variable. The quickest
way to do this is:

    PORT=9000 make dev

Or edit the makefile and set a `PORT` variable.

### Don't use SASS

Delete the `sass` directory. Ignore the warning that gets thrown.

### Don't use CoffeeScript

Delete the `coffee` directory. Ignore the warning that gets thrown.

### Background the server

Start it like normal but append `&` like this:

    $ make dev &

And to quit:

    $ fg
    make dev
    ^C

or:

    $ kill $!

or:

    $ kill %%

or:

    $ kill %1

etc...
