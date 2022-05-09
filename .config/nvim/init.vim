if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/houssemlayouni/.dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/houssemlayouni/.dein')
  call dein#begin('/Users/houssemlayouni/.dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/houssemlayouni/.dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neocomplete.vim')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('scrooloose/nerdtree')
  call dein#add('sheerun/vim-polyglot')

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

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
set nu rnu

let g:airline_powerline_fonts = 1
