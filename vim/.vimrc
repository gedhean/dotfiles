set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  " let Vundle manage Vundle, required
  Plugin 'VundleVim/Vundle.vim'
  " Airline themes
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'  

  " NERDTree
  " Treeview of the project
  Plugin 'scrooloose/nerdtree'
  Plugin 'jistr/vim-nerdtree-tabs'
  " Rails stuff
  Plugin 'tpope/vim-rails'
  " All of your Plugins must be added before the following line
  " Fuzzy finder
  Plugin 'junegunn/fzf'
  Plugin 'editorconfig/editorconfig-vim'
call vundle#end()            " required

filetype plugin indent on    " required

" Indention
set autoindent                                                                " New lines inherit indention of previews line
set expandtab                                                                 " Convert tabs to spaces
set tabstop=2                                                                 " Indent using four spaces.
set shiftwidth=2                                                              " When shifting, indent using four spaces
set softtabstop=2                                                              " This should always equals `tabstop` for proper indenting
"set filetype indent on                                                        " Enable indentation rules that are file-type specific.
"set shiftround                                                                " When shifting lines, round the indentation to the nearest multiple of “shiftwidth.”

" Search
"set hlsearch                                                                  " Enable search highlighting.
set ignorecase                                                                " Ignore case when searching
set incsearch                                                                 " Incremental search that shows partial matches.
"set smartcase                                                                 " Automatically switch search to case-sensitive when search query contains an uppercase letter.

" Text rendenring
set encoding=utf-8                                                            " Use an encoding that supports unicode.
syntax enable                                                                 " Enable syntax highlighting.
"set display+=lastline                                                         " Always try to show a paragraph’s last line.
"set linebreak                                                                 " Avoid wrapping a line in the middle of a word
"set scrolloff=1                                                               " The number of screen lines to keep above and below the cursor.
"set sidescrolloff=5                                                           " The number of screen columns to keep to the left and right of the cursor.
"set wrap                                                                      " Enable line wrapping.

" User Interface
set title                                                                     " Set the window’s title, reflecting the file currently being edited.
set laststatus=2                                                              " Always display the status bar.
set ruler                                                                     " Always show cursor position
"set number                                                                    " Show line numbers on the sidebar.
"set relativenumber                                                            " Show line number on the current line and relative numbers on all other lines.
"set tabpagemax=50                                                             " Maximum number of tab pages that can be opened from the command line.
"set wildmenu                                                                  " Display command line’s tab complete options as a menu.
"set colorscheme wombat256mod                                                  " Change color scheme
"set cursorline                                                                " Highlight the line currently under cursor.
"set noerrorbells                                                              " Disable beep on errors.
"set visualbell                                                                " Flash the screen instead of beeping on errors.
set mouse=a                                                                   " Enable mouse for scrolling and resizing.
set background="black"                                                        " Use colors that suit a dark background.

" Code folding
"set foldmethod=indent                                                         " Fold based on indention levels.
"set foldnestmax=3                                                             " Only fold up to three nested levels.
"set nofoldenable                                                              " Disable folding by default.

" Miscellaneous
"set autoread                                                                  " Automatically re-read files if unmodified inside Vim.
"set backspace=indent,eol,start                                                " Allow backspacing over indention, line breaks and insertion start.
"set backupdir=~/.cache/vim                                                    " Directory to store backup files.
"set confirm                                                                   " Display a confirmation dialog when closing an unsaved file.
"set dir=~/.cache/vim                                                          " Directory to store swap files.
"set formatoptions+=j                                                          " Delete comment characters when joining lines.
"set hidden                                                                    " Hide files in the background instead of closing them.
"set history=1000                                                              " Increase the undo limit.
"set nomodeline                                                                " Ignore file’s mode lines; use vimrc configurations instead.
set noswapfile                                                                " Disable swap files.
"set nrformats-=octal                                                          " Interpret octal as decimal when incrementing numbers.
"set shell                                                                     " The shell used to execute commands.
"set spell                                                                     " Enable spellchecking.
"set wildignore+=.pyc,.swp                                                    " Ignore files matching these patterns when opening files based on a glob pattern.

set fileencoding=utf-8                                                         " Set utf-8 encoding on write
set history=500                                                                " Store lots of :cmdline history
set showmode                                                                   " Show which mode we are in. (NORMAL VISUAL INSERT PASTE etc)
set nowrap
"set colorcolumn=80                                                            " Highlight max line length
set splitright                                                                 " Set up new splits positions
set splitbelow                                                                 " Set up new splits positions
" No backups nor swap files
set noswapfile
set nobackup
set nowb

syntax enable

filetype on

filetype indent on                                                             " Enable filetype-specific indenting
" Enable filetype-specific plugins
filetype plugin on
filetype indent plugin on

" Airline
set laststatus=2                                                                " Needed to Airline works 

" NERDTree
map <C-\> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "left"
let NERDTreeMapActivateNode='<space>'
let g:NERDTreeMinimalUI = 1                                                     "Disable help text and bookmark title
let g:NERDTreeShowHidden = 1                                                    "Show hidden files in NERDTree
let g:NERDTreeIgnore=['\.git$', '\.sass-cache$', '\.vagrant', '\.idea']
let NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" Find current file in NERDTree
nnoremap <Leader>hf :NERDTreeFind<CR>
" Open NERDTree
nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <C-p> :<C-u>FZF<CR>
