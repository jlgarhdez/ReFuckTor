ReFuckTor
=========
This is an alpha and still under development. Please let me know your opinions
at jl.garhdez@gmail.com. If you like, send me a pull request, the goal is to
create a plugin to manage all the refactoring techniques...

Yes, you guessed it. This plugins allows you to refactor in several languages,
such as PHP, Python and Javascript. If you like to contribute, make changes and
send me a pull request.

Insallation
-----------
Install via Pathogen, plz!

	cd ~/.vim
	git submodule add https://github.com/jlgarhdez/ReFucktor.git bundle/refucktor
	git submodule update

Mappings
--------
The plugin itself creates 2 mappings:

	<leader>rv " Asks for the name and create a new variable with the selected
	text
	<leader>rm " Asks for the name and creates a new method with the selected
	text
