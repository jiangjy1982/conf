syntax enable

set tabstop=4
set softtabstop=4
set expandtab

set number
set ruler
set showcmd
set cursorline
filetype indent on
filetype plugin indent on
set wildmenu
set lazyredraw
set showmatch

set incsearch
set hlsearch

set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=manual

execute pathogen#infect()

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_python_checkers = ['flake8']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
