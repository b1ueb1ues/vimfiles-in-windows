se nocp "nocompatible
colorscheme Tomorrow-Night
"se viminfo=:1000,@1000
"se go=


se guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h14
se fileencodings=utf-8,ucs-bom,gbk,gb2312
se laststatus=2
"autocmd bufwritepost .vimrc source $MYVIMRC
se fo-=o
nmap <leader>s :so $MYVIMRC<return>


"source $VIMRUNTIME/vimrc_example.vim
"se paste "paste with no indent
se foldmethod=marker

"basic
syntax on
se nu "number
se cul "cursor line
hi cursorline cterm=NONE ctermbg=black ctermfg=white
se ru "ruler
se sc "showcmd
se ar "autoread
se history=1000
se nobackup
se showmatch
se mouse=a
se backspace=eol,start,indent
se magic

"nobell
	se noerrorbells
	se novisualbell
"
"keymap 

nmap <c-j> 3j
nmap <c-k> 3k
imap kj <esc>
imap jk <esc>

vmap <c-c> "+y
nmap <c-v> "+<s-p>
imap <c-v> <esc>"+p
nmap k gk
nmap j gj
nmap <space> :

"nmap <c-j> <c-w>j
"nmap <c-k> <c-w>k
"nmap <c-h> <c-w>h
"nmap <c-l> <c-w>l
imap <a-u> <esc>gUawea
nmap U gUaw


nmap <f5> :nohl<return>
nmap <leader>p :w !python<cr>
nmap <leader>w :w<cr>
nmap <leader>q :wq<cr>
"

"hl tab i so wild
"hl
	se hls "highlight search
	se is "incsearch
	se ic "ignorecase
	se scs "smartcase
"tab
	se sta "smarttab
	"se ts=4 "tabstop
"indent
	se si "smartindent
	se ai "autoindent
	"se cin "cindent
	"se sw=4 "shiftwidth
"scrolloff
	se so=3
"complete
	se wildmenu
	se completeopt=longest,menu
"

"misc 
autocmd BufReadPost *
\ if line("'\"") > 1 && line("'\"") <= line("$") |
\   exe "normal! g`\"" |
\ endif
"

"windows 
"source $VIMRUNTIME/mswin.vim
"behave mswin
if has("gui_running")
	set guioptions-=T
	let psc_style='cool'
	se guioptions-=m
endif
"

"  vundle
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=d:/opt/vim/vimfiles/bundle/Vundle.vim
call vundle#begin("d:/opt/vim/vimfiles/bundle/")
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'bling/vim-airline'
Plugin 'fidian/hexmode'
"Plugin 'Shougo/neocomplete.vim'
"Plugin 'klen/python-mode'
"Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'sjl/gundo.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
Plugin 'Tagbar'

" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"

"tagbar
"let g:tagbar_autoclose=1
let g:tagbar_left=1
let g:tagbar_width=20
"
"
" YCM
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

"
