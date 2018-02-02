set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
" set rtp+=$HOME/vimfiles/bundle/Vundle.vim/ " if in windows, use this setting.
" call vundle#begin('$HOME/vimfiles/bundle/') " if in windows
set rtp+=~/.vim/bundle/Vundle.vim " if in macOS or linux, use this setting.
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"补全插件
Plugin 'ternjs/tern_for_vim'
Plugin 'Valloric/YouCompleteMe'
"显示状态行
"Plugin 'Lokaltog/vim-powerline'
"let g:Powerline_symbols = 'fancy'
Plugin 'vim-airline/vim-airline' 
Plugin 'vim-airline/vim-airline-themes'
set laststatus=2   " Always show the statusline
"主题插件
Plugin 'tomasr/molokai'
colorscheme molokai
let g:molokai_original = 1
"文件浏览插件
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
"git插件
Plugin 'tpope/vim-fugitive'
"vue高亮插件
Plugin 'posva/vim-vue'
"markdow高亮插件
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
"markdown实时预览插件
Plugin 'iamcco/markdown-preview.vim'
"全局搜索插件
Plugin 'mileszs/ack.vim'

""" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

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

"--------Gvim中文菜单乱码解决方案
" 设置文件编码格式
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1,gbk,gb18030,gk2312
"if has("win32")
" set fileencoding=chinese
"else
 set fileencoding=utf-8
"endif

"解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

"解决consle提示信息输出乱码
language messages zh_CN.utf-8

"--------以上是Gvim中文菜单乱码解决方案------------
let mapleader = ","
"在新的tab页编辑vimrc
nnoremap <leader>ev :tabnew $MYVIMRC<cr>
"使新的vimrc生效
nnoremap <leader>sv :source $MYVIMRC<cr>
"为一个单词添加双引号
nnoremap <leader>"  viw<esc>a"<esc>hbi"<esc>lel
"为一个单词添加单引号
nnoremap <leader>'  viw<esc>a'<esc>hbi'<esc>lel
nnoremap <leader>w  <c-w>
noremap H  <s-^>
noremap L  <s-$>
inoremap jk <esc>
autocmd FileType javascript :iabbrev <buffer> iff if( ) {}<left><left><left><left><left>
autocmd FileType markdown :iabbrev <buffer> formhead ---<cr>layout: post<cr>title: <cr>date: <cr>tags: <cr>comments: true<cr>---<esc>

"show row number
set number
set backspace=indent,eol,start

"highlight match while typing search pattern
set incsearch
set hlsearch
"ignore case when search
set ignorecase

"Keep 50 commands and 50 search patterns in the history.
set history=50

"Always display the current cursor position in the lower right corner of the Vim window.
set ruler

"Display an incomplete command in the lower right corner of the Vim window, left of the ruler.
set showcmd

"number of spaces that <Tab> in file uses
set tabstop=4
"number of spaces to use for (auto)indent step
set shiftwidth=4
set softtabstop=4
"In Insert mode: Use the appropriate number of spaces to insert a <Tab>
set expandtab 
"uses the indent from the previous line
set autoindent
set smartindent
set cindent

"设置取消备份，禁止临时文件生成
set nobackup
set noswapfile

set cursorline
set mouse=a

syntax enable

"------------设置gvim隐藏菜单栏，工具栏，滚动条----------
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar
"-------------以上是设置gvim隐藏菜单栏-------------------

"-------------------vim-airline配置----------------------

 let g:airline_theme="molokai" 

 "安装并设置字体
 if has("win32")
 	set guifont=Noto_Mono_for_Powerline:h11:cANSI:qDRAFT
 endif
 "这个是安装字体后 必须设置此项" 
 let g:airline_powerline_fonts = 1   

 "打开tabline功能,方便查看Buffer和切换，这个功能比较不错"
 "我还省去了minibufexpl插件，因为我习惯在1个Tab下用多个buffer"
 let g:airline#extensions#tabline#enabled = 1
 let g:airline#extensions#tabline#buffer_nr_show = 1

 "设置切换Buffer快捷键"
 nnoremap <C-N> :bn<CR>
 nnoremap <C-P> :bp<CR>

 " 关闭状态显示空白符号计数,这个对我用处不大"
 let g:airline#extensions#whitespace#enabled = 0
 let g:airline#extensions#whitespace#symbol = '!'


  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
"-------------------以上是vim-airline配置----------------------

"------------------markdown插件配置----------------------
"markdown高亮插件vim-markdown配置
let g:vim_markdown_folding_disabled = 1

"markdown预览插件markdown-preview配置
let g:mkdp_path_to_chrome = 'C:\Program Files (x86)\Google\Chrome\Application\chrome.exe'
" 设置 chrome 浏览器的路径（或是启动 chrome（或其他现代浏览器）的命令）

let g:mkdp_auto_start = 0
" 设置为 1 可以在打开 markdown 文件的时候自动打开浏览器预览，只在打开
" markdown 文件的时候打开一次

let g:mkdp_auto_open = 0
" 设置为 1 在编辑 markdown 的时候检查预览窗口是否已经打开，否则自动打开预
" 览窗口

let g:mkdp_auto_close = 1
" 在切换 buffer 的时候自动关闭预览窗口，设置为 0 则在切换 buffer 的时候不
" 自动关闭预览窗口

let g:mkdp_refresh_slow = 0
" 设置为 1 则只有在保存文件，或退出插入模式的时候更新预览，默认为 0，实时
" 更新预览

"------------------以上是markdown插件配置----------------------

let g:vue_disable_pre_processors=1

