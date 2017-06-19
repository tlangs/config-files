set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'tpope/vim-sensible'
Plugin 'broadinstitute/vim-wdl'
Plugin 'derekwyatt/vim-scala'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Raimondi/delimitMate'
Plugin 'rainbow_parentheses.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
call vundle#end()

filetype plugin indent on
""" General Setup 

set number
set mouse=a
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set smarttab
set updatetime=250

""" Lightline
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

""" Rainbow Parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

""" GitGutter
let g:gitgutter_sign_column_always = 1
