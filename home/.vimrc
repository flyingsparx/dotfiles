
" start Vundle config
" install: git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" install plugins: PluginInstall
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'ctrlpvim/ctrlp.vim'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_map = '<c-f>'

Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

Plugin 'airblade/vim-gitgutter'
set updatetime=100

Plugin 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>

Plugin 'itchyny/lightline.vim'
set laststatus=2

call vundle#end()
" end Vundle config

" indentation
set tabstop=8 softtabstop=2 expandtab shiftwidth=2 smarttab
filetype plugin indent on
set autoindent
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal expandtab shiftwidth=2 softtabstop=2
set number

" colours
syntax on
colorscheme desert
" slate is nice too
