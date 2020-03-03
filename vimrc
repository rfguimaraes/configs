" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/ricardo/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/ricardo/.cache/dein')
  call dein#begin('/home/ricardo/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/ricardo/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  "call dein#add('vim-scripts/AutoComplPop')
  call dein#add('vim-scripts/a.vim')
  call dein#add('flazz/vim-colorschemes')
  call dein#add('ctrlpvim/ctrlp.vim')
  call dein#add('Raimondi/delimitMate')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('scrooloose/nerdcommenter')
  call dein#add('joshdick/onedark.vim')
  call dein#add('luochen1990/rainbow')
  call dein#add('tpope/vim-surround')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('altercation/vim-colors-solarized')
  call dein#add('xolox/vim-easytags')
  call dein#add('tpope/vim-fugitive')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('rhysd/vim-grammarous')
  call dein#add('xolox/vim-misc')
  call dein#add('jistr/vim-nerdtree-tabs')
  call dein#add('tpope/vim-obsession')
  call dein#add('tpope/vim-sensible')
  call dein#add('vimwiki/vimwiki')
  call dein#add('scrooloose/syntastic')
  call dein#add('lervag/vimtex')
  call dein#add('deoplete-plugins/deoplete-jedi')
  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set nocompatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
"if has("syntax")
"  syntax on
"endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

map <F6> :tabp <Enter>
map <F7> :tabn <Enter>
map <F8> :Errors <Enter>
map <F9> :lcl <Enter>
inoremap jk <ESC>

"filetype plugin off
"execute pathogen#infect()
"syntax on
"filetype plugin indent on
"filetype plugin on

set ofu=syntaxcomplete#Complete
"set nocompatible

set modelines=0

set textwidth=76  " lines longer than 76 columns will be broken
set shiftwidth=4  " operation >> indents 4 columns; << unindents 4 columns
set tabstop=4     " a hard TAB displays as 4 columns
set expandtab     " insert spaces when hitting TABs
set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround    " round indent to multiple of 'shiftwidth'
set autoindent    " align the new line indent with the previous line

set wrap
set formatoptions=qrn1
set colorcolumn=76
hi ColorColumn guibg=black

set encoding=utf-8
set scrolloff=3
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
"set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

let mapleader = ","

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

nnoremap ; :

autocmd InsertEnter * :set number
autocmd InsertEnter * :set relativenumber
autocmd InsertLeave * :set number
autocmd InsertLeave * :set relativenumber

function! NumberToggle()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set number
        set relativenumber
    endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>

au FocusLost * :wa

colorscheme onedark

" Rainbow cfgs
let g:rainbow_active = 1
 let g:rainbow_conf = {
    \   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
    \   'ctermfgs': ['blue', 'yellow', 'cyan', 'magenta'],
    \   'operators': '_,_',
    \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
    \   'separately': {
    \       '*': {},
    \       'tex': {'parentheses_options' : 'containedin=texMathZoneX containedin=texStatement containedin=texSectionZone containedin=texMathZoneW'},
    \       'lisp': {
    \           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
    \       },
    \       'vim': {
    \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
    \       },
    \       'html': {
    \           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
    \       },
    \       'css': 0,
    \   }
    \}

" Autowrap
set fo+=t

" fix conflict between spell check and cursor line
"hi clear SpellBad
"hi clear SpellLocal
"hi clear SpellCap
hi SpellBad cterm=underline
hi SpellCap cterm=bold
hi SpellLocal cterm=bold


" Improve splitting
set splitbelow
set splitright

" Syntastic: New User Recommended

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_ignore_files = ['\m\c\.pgf$']
let g:syntastic_disable_filetypes = ['pgf']
let g:syntastic_tex_remove_include_errors = 1
let g:syntastic_latex_remove_include_errors = 1
let g:syntastic_quiet_messages = { "regex": "Do not use @ in LaTeX macro names"}

" Syntastic java settings for classpath

let g:syntastic_java_checkers=['javac']
let g:syntastic_java_javac_config_file_enabled = 1


"fugitive
set statusline+=%{fugitive#statusline()}

" NERDtree
silent! nmap <F2> :NERDTreeToggle<CR>
silent! map <F3> :NERDTreeFind<CR>

let g:NERDTreeMapActivateNode="<F3>"
let g:NERDTreeMapPreview="<F4>"


"deoplete
if has('nvim')
    set termguicolors
    let g:deoplete#enable_at_startup = 1
    au BufEnter,TermOpen term://* AcpDisable
    au BufLeave term://* AcpEnable
endif
" Disable automatic completion
let g:deoplete#disable_auto_complete = 0
" Navigate with tab
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
" Automatically colorschemee 

" Vimtex
" Avoid issues with deoplete
call deoplete#custom#var('omni', 'input_patterns', {
      \ 'tex': g:vimtex#re#deoplete
      \})

" Enable omni completion.
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"autocmd FileType latex setlocal omnifunc=latexcomplete#CompleteTags
"autocmd FileType tex setlocal omnifunc=texcomplete#CompleteTags
"autocmd FileType java setlocal omnifunc=javacomplete#CompleteTags


" disable the <tab> mapping provided by vimwiki, which interferes with SuperTab
" https://github.com/ervandew/supertab/issues/148
let g:vimwiki_table_mappings = 0

" Grammarous mappings
nmap <F4> <Plug>(grammarous-move-to-info-window)

autocmd FileType plaintex,tex,latex syntax spell toplevel

set conceallevel=0


map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
