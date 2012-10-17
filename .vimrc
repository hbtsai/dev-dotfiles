set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'tir_black'
Bundle 'jellybeans.vim'
Bundle 'mattn/zencoding-vim'
Bundle 'Shougo/neocomplcache'

Bundle 'flazz/vim-colorschemes'
Bundle 'altercation/vim-colors-solarized'
Bundle 'ColorSchemeMenuMaker'
Bundle 'ScrollColors'
Bundle 'desert-warm-256'

Bundle 'YankRing.vim'
Bundle 'VisIncr'
Bundle 'Align'
Bundle 'mru.vim'
Bundle 'sjl/gundo.vim'
Bundle 'Raimondi/delimitMate'
Bundle 'godlygeek/tabular'
Bundle 'spiiph/vim-space'

Bundle 'AutoComplPop'
Bundle 'ervandew/supertab'

Bundle 'MarcWeber/vim-addon-mw-utils.git'
Bundle 'tomtom/tlib_vim.git'
Bundle 'honza/snipmate-snippets.git'
Bundle 'garbas/vim-snipmate.git'

Bundle 'othree/html5.vim'
Bundle 'tpope/vim-haml'
Bundle 'nono/jquery.vim'
Bundle 'othree/xml.vim'

Bundle 'othree/javascript-syntax.vim'
Bundle 'jiangmiao/simple-javascript-indenter'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'JSON.vim'
Bundle 'othree/jslint.vim'
Bundle 'jQuery'

Bundle 'nginx.vim'

Bundle 'hail2u/vim-css3-syntax'

Bundle 'nono/vim-handlebars'

Bundle 'juvenn/mustache.vim'

Bundle 'plasticboy/vim-markdown'

Bundle 'Lokaltog/vim-easymotion'
Bundle 'tsaleh/vim-matchit'

Bundle 'othree/fecompressor.vim'

Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'humiaozuzu/TabBar'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/syntastic'

Bundle 'humiaozuzu/fcitx-status'
Bundle 'nvie/vim-togglemouse'

Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-abolish'

Bundle 'kchmck/vim-coffee-script'
" Bundle 'othree/coffee-check.vim'

Bundle 'mattn/hahhah-vim'
Bundle 'tyru/banban.vim'
Bundle 'jcf/vim-latex'

Bundle 'vim-scripts/L9'
Bundle 'vim-scripts/FuzzyFinder'
Bundle 'vimwiki'

Bundle 'https://bitbucket.org/kh3phr3n/vim-qt-syntax.git'


filetype plugin on
filetype indent on
filetype plugin indent on

syn on
set rnu
set ai
set tabstop=4
set sw=4
set shiftwidth=4
set softtabstop=4
set expandtab
set showmatch
set ruler
set incsearch
set scrolloff=4
set smartindent
set showmode
set showcmd
set hidden
set nocompatible
set backspace=indent,eol,start
set laststatus=2
set cursorline
set visualbell
set encoding=utf-8
set lazyredraw
set ttyfast
set t_Co=256
colorscheme leo
autocmd! bufwritepost .vimrc source ~/.vimrc

" use zencoding
let g:use_zen_complete_tag = 1

" auto save folding states
set viewoptions=folds   
au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview

" open file browsing tree
map <F2> :NERDTreeToggle<CR>
map <F3> :A<CR>
map <F4> :TlistToggle<CR>

set grepprg=grep\ -nH\ $*
" let g:Tex_FormatDependency_pdf = 'dvi,ps,pdf'
" let g:Tex_CompileRule_dvi = 'xelatex -src-specials -interaction=nonstopmode $*'
" let g:Tex_CompileRule_ps = 'dvips -Ppdf -o $*.ps $*.dvi'
let g:Tex_TreatMacViewerAsUNIX = '0'
let g:Tex_ExecuteUNIXViewerInForeground = '0'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_CompileRule_pdf = 'xelatex --src-specials -interaction=nonstopmode $*'
let g:Tex_ViewRule_ps = 'Skim'
let g:Tex_ViewRule_pdf = 'Skim'
let g:Tex_ViewRule_dvi = 'TeXniscope'

autocmd FileType tex map <silent><leader><space> :w!<CR> :silent! call Tex_RunLaTeX()<CR>
autocmd FileType tex inoremap $i \indent
autocmd FileType tex inoremap $* \cdot
autocmd FileType tex inoremap $i \item
autocmd FileType tex inoremap $m \[<CR>\]<ESC>O

let tlist_objc_settings = 'ObjectiveC;P:protocols;i:interfaces;c:class;m:method'

"NERD Tree
let NERDChristmasTree=1 
let NERDTreeBookmarksFile='~\.vim\Data\NerdBookmarks'
let NERDTreeShowBookmarks=1
let NERDTreeShowFiles=1
let NERDTreeShowHidden=0 
let NERDTreeWinPos='left'
let NERDTreeWinSize=25

let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_enable_camel_case_completion=1
let g:neocomplcache_enable_underbar_completion=1
let g:neocomplcache_min_syntax_length=3
let g:neocomplcache_manual_completion_start_length=3
let g:neocomplcache_enable_ignore_case=1
let g:neocomplcache_lock_buffer_name_pattern='\*ku\*'
let g:neocomplcache_max_list=100
let g:neocomplcache_enable_auto_select = 1
imap <expr><c-y> neocomplcache#close_popup()
imap <expr><C-e> neocomplcache#cancel_popup()

"Markdown language syntax settings
augroup mkd
autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:>
augroup END

" relative numbering
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

if has("gui_running")
  set guifont=Monaco\ 11
endif


