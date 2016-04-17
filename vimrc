set guifont=DejaVu\ Sans\ mono\ 16 "ubuntu下保证gvim字符间隔并设置字体大小
set tabstop=4                      " 设置制表符(tab键)的宽度
set nu                             "显示行号
set autoindent " 设置自动对齐(缩进)：即每行的缩进值与上一行相等；使用 noautoindent 取消设置
set autowrite " 自动把内容写回文件: 如果文件被修改过，在每个 :next、:rewind、:last、:first、:previous、:stop、:suspend、:tag、:!、:make、CTRL-] 和 CTRL-^命令时进行；用 :buffer、CTRL-O、CTRL-I、'{A-Z0-9} 或 `{A-Z0-9} 命令转到别的文件时亦然。`'"
set mouse=a " Enable mouse usage (all modes) "使用鼠标
set cindent " 使用 C/C++ 语言的自动缩进方式
"--命令行设置--
set showcmd " 命令行显示输入的命令
set showmode " 命令行显示vim当前模式
"--find setting--
set incsearch " 输入字符串就显示匹配点
set hlsearch

"Vundle插件
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" syntax detection
Plugin 'scrooloose/syntastic'

Plugin 'scrooloose/nerdcommenter'

Plugin 'scrooloose/nerdtree'

Plugin 'jiangmiao/auto-pairs'

Plugin 'altercation/vim-colors-solarized'

Bundle 'Valloric/YouCompleteMe'
" code-auto-completion
"Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

syntax enable " 语法高亮
"colorsheme and appearence
if has('gui_running')
    set background=light
else
    set background=dark
endif
"colorscheme molokai                "设置主题
"colorscheme desert                 "设置主题
""""""""""""""Solarized"""""""""""""""
let g:solarized_termcolors=16 | 256
let g:solarized_termtrans = 0 | 1 
let g:solarized_degrade = 0 | 1
let g:solarized_bold = 1 | 0
let g:solarized_underline = 1 | 0
let g:solarized_italic = 1 | 0
let g:solarized_contrast = "normal"| "high" or "low"
let g:solarized_visibility= "normal"| "high" or "low"
colorschem solarized                "设置主题

""""""""""""""YCM"""""""""""""""""""""
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_confirm_extra_conf = 0

