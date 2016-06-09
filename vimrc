
" colorscheme elflord

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle 

set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/vundle'
Plugin 'L9'

" We could also add repositories with a ".git" extension
" Plugin 'scrooloose/nerdtree.git'

" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin 'Buffergator'
Plugin 'tComment'
" Plugin 'Tagbar'
Plugin 'valloric/youcompleteme'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin 'chriskempson/base16-vim'
"     """""Plugin 'chriskempson/base16-shell'
" colorscheme base16-ocean
" let base16colorspace=256
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "" Solarized colorscheme 
Plugin 'altercation/vim-colors-solarized'
          """ Plugin 'altercation/solarized'
set term=screen-256color-bce
let g:solarized_termcolors=256
colorscheme solarized
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256
set background=dark
" set background=light

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" AirLine
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
set laststatus=2 
" let g:airline_theme='base256'
" let g:airline_theme='solarized'
" let g:airline_theme='base16_monokai'
let g:airline_theme='base16_ocean'
" AirlineTheme solarized
" AirlineRefresh


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Now we can turn our filetype functionality back on
filetype plugin indent on



" Reload .vimrc if changed
autocmd! bufwritepost .vimrc source %
set clipboard=unnamed
set clipboard=unnamedplus
" Not compatible with VI
set nocompatible

" Indentation
set autoindent
set smartindent
set cindent
"set mouse=a

" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

" use intelligent file completion like in the bash
set wildmode=longest:full
set wildmenu

" Enable line numbers
set number

" Syntax highlighting
syntax on
syntax enable

" Basic settings
filetype plugin indent on

" Tab settings
set tabstop=2
set shiftwidth=2
set expandtab

" Timeout to Normal mode
set ttimeoutlen=50

" set noshowmode

" Switch buffers without saving
set hidden

" Case insensitive search by default
set ignorecase


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"YCM 

" Always show gutter so that YCM syntax
" error highlight doesnt move text L/R
autocmd BufEnter * sign define dummy
autocmd BufEnter * execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
" Autoclose the preview window after 
"let g:ycm_key_list_select_completion=[]
"let g:ycm_key_list_previous_completion=[]

" leaving insert mode for YCM
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_always_populate_location_list = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"--TAGBAR
nmap <C-T> :TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('cscope')
  set cscopetag cscopeverbose

  if has('quickfix')
    set cscopequickfix=s-,c-,d-,i-,t-,e-
  endif

  cnoreabbrev csa cs add
  cnoreabbrev csf cs find
  cnoreabbrev csk cs kill
  cnoreabbrev csr cs reset
  cnoreabbrev css cs show
  cnoreabbrev csh cs help

  "command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" function MyDiff2()
"     let opt = ""
"     if &diffopt =~ "icase"
"         let opt = opt . "-i "
"     endif
"     if &diffopt =~ "iwhite"
"         let opt = opt . "-w -B " " vim uses -b by default
"     endif
"     silent execute "!diff -a --binary " . opt .
"                 \ v:fname_in . " " . v:fname_new .  " > " . v:fname_out
" endfunction
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" mapping :bn and :bp
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim backspace problems - trying solns
set backspace=indent,eol,start
" try :help i_backspacing



