" Start pathogen
execute pathogen#infect()

" Enable absolute numbering when inserting
" (In combination with numbers plugin)
set number

" Fold
set foldmethod=indent

" Enable syntax
syntax on
filetype plugin indent on

" Disable tab characters
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" git commit always first line
au FileType gitcommit au! BufEnter COMMIT_EDITMSG call setpos('.', [0, 1, 1, 0])

" Set the colorscheme to colors/molokai.vim
colorscheme molokai

" Add spellchecking
" set spell spelllang=en_us

" Enable 256 colors for molokai
set t_Co=256

" fugitive bindings
nnoremap gs :Gstatus<CR>
nnoremap gc :Gcommit -v<CR>
nnoremap gp :Git push
" Note: whitespace intendend
nnoremap gd :Git 

" Ruby syntax on for 'Vagrantfile'
au BufNewFile,BufRead Vagrantfile set filetype=ruby

" NERDtree options
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Rubocop option
nnoremap co :RuboCop<CR>

" Clear all buffers
nnoremap ev :qa<CR>
