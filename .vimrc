set nocompatible
set backspace=indent,eol,start
set autoindent
set history=50
set lines=37

filetype off

"vundle
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
    
    Plugin 'VundleVim/Vundle.vim'

    Plugin 'tpope/vim-fugitive'
    
    Plugin 'valloric/youcompleteme'
    
    Plugin 'easymotion/vim-easymotion'
    
    Plugin 'scrooloose/syntastic'
    
    Plugin 'marijnh/tern_for_vim'
    
    Plugin 'scrooloose/nerdtree'
    
    Plugin 'raimondi/delimitmate'
    
    Plugin 'vim-airline/vim-airline'
    
    Plugin 'kien/ctrlp.vim'

    Plugin 'terryma/vim-multiple-cursors'

call vundle#end()

filetype plugin indent on

colorscheme SMYCK

set runtimepath^=~/.vim/bundle/ctrlp.vim

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

set t_Co=256
set background=dark

" set tab to 4 spaces
set sw=4 sts=4 et

" For airline plugin
set laststatus=2

" leader
let mapleader=","

" syntax related
syntax on

" nerd tree
map <C-n> :NERDTreeToggle<CR>

" line numbers
noremap <F3> :set invnumber<CR>
inoremap <F3> <C-O>:set invnumber<CR>
set numberwidth=3

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['jsxhint']
