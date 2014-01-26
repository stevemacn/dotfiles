" vimrc for @stevemacn, ask on github for help/issues

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" DO NOT CHANGE ANYTHING ABOVE THIS LINE....

" My Bundles 
"=================

" Utilities
" ====
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'bogado/file-line.git'

"Tabline"
Bundle 'majutsushi/tagbar'
Bundle 'bling/vim-airline.git'

set laststatus=2

" Syntax
" ====
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-markdown'


"Omnicomplete
"====
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"

Bundle 'Shougo/neocomplcache'

Bundle 'Raimondi/delimitMate'
Bundle 'othree/html5.vim'

"Dictionaries
"====
Bundle 'teramako/jscomplete-vim'

"NodeJs
"====
Bundle 'digitaltoad/vim-jade'
Bundle 'wavded/vim-stylus'
Bundle 'pangloss/vim-javascript'
Bundle 'myhere/vim-nodejs-complete'
Bundle 'jamescarr/snipmate-nodejs'

"Dashboard
"====
Bundle 'godlygeek/tabular'

"Beautfy my js 
"====
Bundle 'maksimr/vim-jsbeautify'
Bundle 'einars/js-beautify'
map <c-j> :call JsBeautify()<cr>


"Installation
"1. Delete bundle/snipmate.vim/snippets because we will use another updated snippets


filetype plugin indent on     " required!

" General Settings
"===================
set history=1000
set autowrite
set noerrorbells
set novisualbell

" Text, Tab, Indent
"===================

set expandtab
set sw=4
set ts=4
set smarttab
set backspace=2

set number 

set ai
set si
set wrap

" Navigation
"===================

set guioptions+=b
set wildmode=list:longest,full

" Make it pretty!
"===================

syntax enable
set background=light
colorscheme solarized
set gfn=monospace\ 8.7

" Backups
"===================
set nowb
set noswapfile
set nobackup

set undolevels=1000

" Configure neocomplcache 
" ==================
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_auto_select = 1
let g:neocomplcache_min_syntax_length = 4 

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown,ctp setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript :setl omnifunc=jscomplete#CompleteJS 
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType php,ctp setlocal omnifunc=phpcomplete#CompletePHP
autocmd FileType vim set omnifunc=syntaxcomplete#Complete

let g:neocomplcache_dictionary_filetype_lists = {
     \ 'default' : '',
     \ 'vimshell' : $HOME.'/.vimshell_hist',
     \ 'javascript' : $HOME.'/.vim/dict/javascript.dict',
     \}

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
   let g:neocomplcache_omni_patterns = {}
endif

let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of old bunldes"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
