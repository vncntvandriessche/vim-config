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
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Git commit always first line
au FileType gitcommit au! BufEnter COMMIT_EDITMSG call setpos('.', [0, 1, 1, 0])

" Set the colorscheme to colors/molokai.vim
colorscheme molokai
set background=dark

" Enable 256 colors for molokai
set t_Co=256

" Fugitive bindings
nnoremap gs :Gstatus<CR>
" Note: whitespace intendend
nnoremap gp :Git push 
nnoremap gc :Gcommit -v 
nnoremap gd :Git 

" Ruby syntax on for 'Vagrantfile'
au BufNewFile,BufRead Vagrantfile set filetype=ruby

" NERDtree options
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Clear all buffers
nnoremap ev :qa<CR>

" Fix whitespace
nnoremap fw :FixWhitespace<CR>

" Airline
let g:airline_theme = 'bubblegum'
let g:airline_powerline_fonts = 1

" Clipboard
set clipboard=unnamed

" Clear number formats to decimal
set nrformats=
