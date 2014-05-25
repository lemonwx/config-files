set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/vimfiles/bundle/Vundle.vim
let path='~/vimfiles/bundle'
call vundle#begin(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" file explorer
Plugin 'scrooloose/nerdtree'

" taglist
Plugin 'vim-scripts/taglist.vim'

" cscope key map
Plugin 'vim-scripts/cscope_macros.vim'

" markdown
Plugin 'tpope/vim-markdown'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"����tab=4
set shiftwidth=4
set sts=4
set tabstop=4

"tab->�ո�
set expandtab

"����gVIMʱ���
au GUIEnter * simalt ~x

"��ʾ�к�
set nu

" encoding
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,big5,latin-1   "ucs-bom,���ݼ��±�����Ĵ���ǰ3�ֽ�EFBBBF��ʶ��UTF-8�����ļ�

" menu�͵ײ���ʾ���������
source $VIMRUNTIME/delmenu.vim   
source $VIMRUNTIME/menu.vim  
language messages zh_US.utf-8 

"������ɫ����
colorscheme desert 

" Ctags
set tags=tags;
set autochdir

" no back up
set nobackup
set nowritebackup

" highlight
syntax on

" search
set hlsearch
set incsearch

" NERDTree settings
let NERDTreeWinPos=1

" move across lines
set backspace=indent,eol,start
set ww+=b,<,>

" key map
nmap , \
nmap <Leader>l <C-w>l
nmap <Leader>j <C-w>j
nmap <Leader>k <C-w>k
nmap <Leader>h <C-w>h

" folding
set foldmethod=syntax
set foldcolumn=1
set foldlevelstart=99

" autoload cscope.out
if has("cscope")
    if filereadable("cscope.out")
        cs add cscope.out
    else
       let cscope_file=findfile("cscope.out", ".;")
       let cscope_pre=matchstr(cscope_file, ".*/")
       if !empty(cscope_file) && filereadable(cscope_file)
           exe "cs add" cscope_file cscope_pre
       endif
     endif
endif
