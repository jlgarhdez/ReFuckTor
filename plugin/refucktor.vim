" refucktor.vim - Vim refactoring helper
" Maintainer: jl.garhdez@gmail.com

if exists("g:loaded_refucktor") || v:version < 700 || &cp
  finish
endif

let g:loaded_refucktor = 1

function ExtractVariable() " ----------------------------------------------- {{{
	
	if &filetype == "php"

		let nombre = input("name: ")
		if nombre == ""
			return
		endif
		normal! gv
		exec "normal c$". nombre
		exec "normal! O" . "$" . nombre . " = "
		normal! $p
		exec "normal A ;"

	elseif &filetype == "python"

		let nombre = input("name: ")
		if nombre == ""
			return
		endif
		normal! gv
		exec "normal c". nombre
		exec "normal! O" . nombre . " = "
		normal! $p

	elseif &filetype == "javascript"

		let nombre = input("name: ")
		if nombre == ""
			return
		endif
		normal! gv
		exec "normal c". nombre
		exec "normal! Ovar " . nombre . " = "
		normal! $p
		exec "normal A;"

	else

		call :echo "Don't know the filtype..."

	endif

endfunction "}}}
function ExtractToMethod() " ----------------------------------------------- {{{

	" Only PHP support yet, if you have any idea for other lang, let me
	" know at jl.garhdez@gmail.com
	if &filetype == "php"

		let nombre = input("name of the method: ")

		if nombre == ""
			call :echo "please enter a name"
			return
		endif

		normal! gv
		exec "normal! c". nombre . "();"
		exec "normal! O" . "function " . nombre . "()"
		exec "put='{'"
		exec "put=''"
		normal! $p
		exec "put='}'"

	endif

endfunction " }}}
