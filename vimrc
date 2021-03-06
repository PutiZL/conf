"sets
set nocompatible
set laststatus=1
set confirm
set autoindent
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set number
set ignorecase
set hlsearch
set noswapfile

"switches
filetype on
colorscheme koehler
syntax on

if has("autocmd")
	au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")|execute("normal `\"")|endif
endif



"keyboard commands
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
nmap ' :vsp 
nmap ; :sp 
nmap . :only
nmap , :close
nmap <F9> O/**<CR>@brief: <CR>@date:[<ESC>:read !date <CR>kJ$a ]<CR>@author: zhuoliang<CR>@param: <CR>@return: <CR>/<ESC>5kA

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

"My plugin
Bundle 'gmarik/vundle'
Bundle 'L9'
Bundle 'taglist.vim'
"Bundle 'Valloric/YouCompleteMe'
Bundle 'davidhalter/jedi-vim'
Bundle 'scrooloose/nerdcommenter'
"Bundle 'bling/vim-airline'
Bundle 'Lokaltog/vim-powerline'
Bundle 'cpp.vim'
"Bundle 'rdnetto/YCM-Generator'
"Bundle 'vim-colorscheme-switcher'
Bundle 'scrooloose/nerdtree'
Bundle 'a.vim'
Bundle 'godlygeek/tabular'
Bundle 'plasticboy/vim-markdown'
Bundle 'snipMate'
Bundle 'scrooloose/snipmate-snippets'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-commentary'
Bundle 'AutoComplPop'
Bundle 'vim-clang'
Bundle 'headerguard'
Bundle 'AutoClose'
Bundle 'STL-Syntax'
Bundle "EasyMotion"
Bundle 'rust-lang/rust.vim'

"taglist
nnoremap <F8> :TlistToggle<CR>

"nerdtree
nmap nd :NERDTree
nmap nc :NERDTreeClose

"vim-powerline
set laststatus=2
set t_Co=256
let g:Powerline_symbols='unicode'
set encoding=utf8

"markdown
"let g:vim_markdown_frontmatter=1
let g:vim_markdown_folding_disabled=1

"vim-colors-solarized
"syntax enable
""set background=dark
"colorscheme solarized

"headerguard
nmap <leader>h :HeaderguardAdd<CR>

set nocompatible
