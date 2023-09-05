" Disable compatibility with vi whic hcan cause unexpected issues:
set nocompatible

" Enable type file detection. Vim will be able to try to detect file type
filetype on

" enable plugins and load plugin for the detected file type
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn on Syntax highlighting
syntax on

" Add numbers to each line on left-hand side:
set number

"Highlight cursor line horiz
set cursorline

" Highlight cursor column
"set cursorcolumn

" Add matchit
"source ~/.vim/
helptags ~/.vim/doc

" Add matlab syntax 
autocmd BufEnter *.m compiler mlint

" Allow vim 'p' paste from linux clipboard
set clipboard=unamed

" Shift pages up or down with ctl k or ctl j 
nmap <C-j> <C-down>
nmap <C-k> <C-up>

" Go to end of line or beginning of line with ctl l or ctl h
map <C-h> ^
map <C-l> $


"set relative numbering for easy nav
set number relativenumber

"set syntax folding:
set foldmethod=syntax

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" reset the cursor on start (for older versions of vim, usually not required)
augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END

set ttimeout
set ttimeoutlen=1
set ttyfast

" Show read-only indicator in status line
set statusline+=%#ErrorMsg#,%{&readonly?'[RO]':''}%*

" Set read-only colors
augroup ReadOnlyColors
  autocmd!
  autocmd VimEnter,ColorScheme * hi ReadOnly guifg=white guibg=red
augroup END

