"Programmer::= Shahrez Jan 
" <snjan19@bu.edu>

"To unlock the Full power of VIM"
set nocompatible

filetype off 

set encoding=utf8
"-----------------------Vundle Plugin Manager---------------------------"
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"VIM becomes an ide"
Plugin 'valloric/youcompleteme'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/syntastic'
Plugin 'morhetz/gruvbox'
Plugin 'rakr/vim-two-firewatch'
Plugin 'ryanoasis/vim-devicons'

call vundle#end()

filetype plugin indent on

"-----------------------------------------------------------------------"


"------LOOKS BABY--------"
syntax on
set background=dark
let g:gruvbox_italic=1
colorscheme gruvbox
set background=dark " or light if you prefer the light version
"let g:two_firewatch_italics=1
"colorscheme two-firewatch

let g:airline_theme='twofirewatch' " if you have Airline installed and want the associated theme

"------------------------"


"-----------------------------------------General Settings--------------------------------------------"

set backspace=indent,eol,start 			"Allows Backspace over Everything"
set ruler										"show the cursor position all the time"
set showcmd										"display the incomplete commands"
set incsearch									"do incremental searching"
set hlsearch									"highlight search words"
set mouse=a										"Enable mouse"
set tabstop=4									"Set tabspace to 4"
set number										"set line numbers"
set autoindent									"autoindent lines"
set laststatus=2 								"Show Status Bar"

"---Airline-----"
let g:airline_detect_paste=1					"Show PASTE if in Paste mode"
let g:airline#extensions#tabline#enabled = 1	"Show Airline for tabs"
 let g:airline_powerline_fonts = 1
"---------------"

"---NERDTree----"
nmap <silent> <leader>t :NERDTreeTabsToggle<CR> " Open/close NERDTree Tabs with \t 
let g:nerdtree_tabs_open_on_console_startup = 1 "To have NERDTree always open on startup"
"---------------"


"---Syntastic---"
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
		au!
		au FileType tex let b:syntastic_mode = "passive"
augroup END
"---------------"

"---------------YouCompleteMe-------------------"
let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/youcompleteme/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
"-----------------------------------------------"

"---------------Vim-DevIcons--------------------"
let g:webdevicons_enable_nerdtree = 0
set guifont=PragmataPro\ for\ Powerline:h12
"-----------------------------------------------"

inoremap { {}<Esc>i
inoremap [ []<Esc>i
inoremap ( ()<Esc>i 

"------------------------------------------------------------------------------------------------------"
