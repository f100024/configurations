
"let g:gruvbox_contrast_dark='hard'
let g:gruvbox_invert_tabline=1
let g:gruvbox_transparent_bg=0
set background=dark
set t_Co=256
colorscheme gruvbox

" To turn on line numbering
set laststatus=5

" Start highlighting,use 'background' to set colors
syntax on

" Loading plugin files and indent file for specific file types
filetype indent plugin on
set modeline

" Number of spaces that <Tab> in the file counts for.
set tabstop=8

" Insert space characters whenever the tab key is pressed,
set expandtab

" Set shiftwidth to control how many columns text is indented with the reindent operations
set shiftwidth=4

" Number of spaces that a <Tab> counts for while performing editing operations, like inserting a <Tab> or using <B5>
set softtabstop=4

" be iMproved, required
set nocompatible

" Disable filetype detection, required
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" set path to fzf
set rtp+=~/.fzf 

call vundle#begin()
Plugin 'TaskList.vim'

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" Provides some utility functions and commands
" for programming in Vim.Plugin from http://vimawesome.com/plugin/l9
Plugin 'L9'

"---------=== Themes install ===-----
Plugin 'morhetz/gruvbox'                " Gruvbox install

"---------=== Code/project navigation and mis c===-----
Plugin 'scrooloose/nerdtree'               " Project and file navigation
Plugin 'majutsushi/tagbar'                 " Class/module browser
Plugin 'haya14busa/incsearch.vim'          " Improved incremental searching for vim
Plugin 'pearofducks/ansible-vim'           " A vim plugin for syntax highligthing Ansible's common types
Plugin 'ekalinin/dockerfile.vim'           " Vim syntax file & snippets for Docker's Dockerfile.

"------------------=== Other ===----------------------
Plugin 'vim-airline/vim-airline'           " Lean & mean status/tabline for vim
Plugin 'vim-airline/vim-airline-themes'    " A collection of themes for vim-airline
Plugin 'tpope/vim-surround'                " Parentheses, brackets, quotes, XML tags, and more
Plugin 'avakhov/vim-yaml'                  " Indent yaml
Plugin 'glench/vim-jinja2-syntax'          " Jinja2 syntax support
Plugin 'plasticboy/vim-markdown'           " Markdown support
Plugin 'godlygeek/tabular'                 " Vim script for text filtering and alignment
Plugin 'milch/vim-fastlane'                " Vim support for fastlane files

"--------------=== Snippets support ===---------------
Plugin 'garbas/vim-snipmate'               " Snippets manager
Plugin 'MarcWeber/vim-addon-mw-utils'      " dependencies #1
Plugin 'tomtom/tlib_vim'                   " dependencies #2
Plugin 'honza/vim-snippets'                " snippets repo
"---------------=== Languages support ===-------------
" --- Python ---
Plugin 'python-mode/python-mode'           " Python mode (docs, refactor, lints, highlighting, run and ipdb and more)
Plugin 'davidhalter/jedi-vim'              " Autocompletion support
Plugin 'mitsuhiko/vim-jinja'               " Jinja support for vim
Plugin 'nvie/vim-flake8'
Plugin 'hynek/vim-python-pep8-indent'      " PEP8 indent

" --- CSS ---
Plugin 'JulesWang/css.vim'                      " CSS syntax file
Plugin 'groenewege/vim-less'                    " Vim syntax for LESS (dynamic CSS)

" --- JavaScript ---
Plugin 'pangloss/vim-javascript'                " Vastly improved Javascript indentation and syntax support in Vim

" --- HTML ---
Plugin 'othree/html5.vim'                       " HTML5 omnicomplete and sytnax
Plugin 'idanarye/breeze.vim'                    " Html navigation like vim-easymotion, tag matching, tag highlighting and DOM navigation
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}      "Sparkup lets you write HTML code faster.

" --- TypeScript ---
Plugin 'leafgarland/typescript-vim'        " Typescript syntax files for Vim 

" --- Golang ---
Plugin 'fatih/vim-go'                      " Support Golang
Plugin 'Shougo/neocomplete.vim'
Plugin 'sebdah/vim-delve'                  " Go Delve

" Go syntax highlighting
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1

" Auto formatting and importing
let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"

" Status line types/signatures
let g:go_auto_type_info = 1

" Map keys for most used commands.
" Ex: `\b` for building, `\r` for running and `\b` for running test.
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
"autocmd Filetype go inoremap <buffer> . .<C-x><C-o> " This could be pretty annoying;

" --- Bash ---
Plugin 'bash-support.vim' " Bash support

" --- Terraform ---
Plugin 'hashivim/vim-terraform'                 " Terraform syntax highlight
Plugin 'juliosueiras/vim-terraform-completion'  " Terraform auto-completion

" --- Misc ---
Plugin 'scrooloose/syntastic'              " Syntax checking hacks for vim 
Plugin 'junegunn/fzf.vim'                  " Fzf plugin
Plugin 'yegappan/taglist'
Plugin 'preservim/nerdcommenter'           " Comment functions so powerful—no comment necessary.
Plugin 'stefandtw/quickfix-reflector.vim'  " In the quickfix window, simply edit any entry you like.
Plugin 'airblade/vim-gitgutter'
Plugin '907th/vim-auto-save' 
Plugin 'rykka/riv.vim'
" ---      ---

" All of your Plugins must be added before the following line
call vundle#end()            " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"=====================================================
" General settings
"=====================================================
" Autosave on startup
let g:auto_save = 0
let g:auto_save_events = ["InsertLeave", "TextChanged"]
map <s-a><s-s> :AutoSaveToggle<CR>

" So that vim-gitgutter will update the screen more often
set updatetime=100
set backspace=indent,eol,start " For backwards compatibility with version 5.4

"aunmenu Help. aunmenu Window.
let no_buffers_menu=1 " Turn off buffer menus

" Show the line and column number of the cursor position
set ruler

" Remove extra information about the currently selected completion in the preview window
set completeopt-=preview

" Indicates a fast termninal connection. More characters will be sent to the
" screen for redrawing, instead of using insert/delete line commands.
set ttyfast

" Rearrange the screen to open one window for each buffer in the buffer list.
tab sball

" If included, jump to the first open window that contains the specified buffer.
set switchbuf=useopen

" Disable beeping
set visualbell t_vb=
set novisualbell

set enc=utf-8        " use utf-8 by default
set ls=2             " always show status bar
set incsearch        " incremental search
set hlsearch         " highlight search results

" Turn off panels
set guioptions-=m    " menu
set guioptions-=T    " toolbar
set guioptions-=r    " scrollbar

" Setup Tabs
set smarttab
set tabstop=8

" Highlights 80 symbols в Ruby/Python/js/C/C++
augroup vimrc_autocmds
    autocmd!
    autocmd FileType ruby,python,javascript,c,cpp highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType ruby,python,javascript,c,cpp match Excess /\%80v.*/
    autocmd FileType ruby,python,javascript,c,cpp set nowrap
augroup END

" SnipMate
let g:snipMate = { 'snippet_version' : 1 }
let g:snippets_dir = "~/.vim/vim-snippets/snippets"

" TagBar
map <F4> :TagbarToggle<CR>
let g:tagbar_autofocus = 0

" NerdTree F3
map <F3> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" TaskList
map <F2> :TaskList<CR>

" Paste mode
set pastetoggle=<F7>

" Buffers
map <S-c> :bn<CR>
map <S-x> :ene<CR>:bw #<CR>
map <S-z> :bp<CR>

" Toggle number lines
map <S-n> :set invnumber<CR>

" Set cursor line by default
set cursorline

"=====================================================
" Terraform settings
"=====================================================
let g:syntastic_terraform_tffilter_plan = 1
let g:terraform_completion_keys = 0
let g:terraform_registry_module_completion = 0

"=====================================================
" Python-mode settings
"=====================================================
let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0

" documentation
let g:pymode_doc = 0
let g:pymode_doc_key = 'K'

" code check
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_lint_ignore="E501,W601,C0110"

" check after saving
let g:pymode_lint_write = 1
" support virtualenv
let g:pymode_virtualenv = 1

"=====================================================
" User hotkeys
"=====================================================

" disable fold
let g:vim_markdown_folding_disabled = 1

" setup breakpoints
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

" highlight syntax
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
let g:pymode_folding = 0
let g:pymode_run = 0

" Disable choose first function/method at autocomplete
let g:jedi#popup_select_first = 0

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='tomorrow'

"if exists('$TMUX') && &term == "screen-256color"
"" Colors in tmux
"    set t_ut=
"endif

