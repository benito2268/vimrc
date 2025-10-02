" Ben's vimrc

" plugins
call plug#begin()

Plug 'junegunn/vim-plug'          
Plug 'tpope/vim-fugitive'       
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'octol/vim-cpp-enhanced-highlight' 
Plug 'mhinz/vim-signify'                
Plug 'preservim/nerdtree'
Plug 'tomasiser/vim-code-dark'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'HealsCodes/vim-gas'

call plug#end()

" settings
syntax on

set number
set rnu
set si
set ai
set expandtab
set hlsearch
set ignorecase
set smartcase

set textwidth=80
set cc=80

set tabstop=4
set shiftwidth=4

filetype plugin indent on
filetype on

au BufRead,BufNewFile *.S set filetype=asm
autocmd FileType asm setlocal syntax=gas

autocmd vimenter * NERDTree

colorscheme codedark

" shortcuts
nnoremap <F2> :vs<CR><C-w>l:term<CR><C-w>j:q<CR>
nnoremap <F3> :vs<CR><C-w>l:term make<CR><C-w>j:q<CR>
