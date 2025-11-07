" global options 

syntax on 
set relativenumber

" identation options
set autoindent
set shiftwidth=2
set smarttab
set tabstop=2

" search options 

set hlsearch
set ignorecase 

" text rendering options
set encoding=utf-8

" plugins
call plug#begin()
Plug 'rust-lang/rust.vim'
Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" rust.vim options
let g:rustfmt_autosave=1

" ale options
let g:ale_linters={
\	'rust': ['analyzer', 'cargo'],
\}

let g:ale_fixers={
\'rust': ['cargofmt'],
\}

let g:ale_completion_enabled=1
let g:ale_completion_autoimport=1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_echo_msg_error_str = 'ERR'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" vim-airline options
let g:airline#extensions#ale#enabled = 1
let g:airline_theme='deus'
