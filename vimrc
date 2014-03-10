" Start pathogen
execute pathogen#infect()

" Enable absolute numbering when inserting
" (In combination with numbers plugin)
set number

" Enable syntax
syntax on
filetype plugin indent on

" Disable tab characters
set expandtab
set tabstop=4

" git commit always first line
au FileType gitcommit au! BufEnter COMMIT_EDITMSG call setpos('.', [0, 1, 1, 0])

" Set the colorscheme to colors/molokai.vim
colorscheme molokai

" Add spellchecking
set spell spelllang=en_us

" Enable 256 colors for molokai
set t_Co=256
