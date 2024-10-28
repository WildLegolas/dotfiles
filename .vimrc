"        .__
"  ___  _|__| ____________   ____
"  \  \/ /  |/     \_  __ \_/ ___\
"   \   /|  |  Y Y  \  | \/\  \___
" /\ \_/ |__|__|_|  /__|    \___  >
" \/              \/            \/

" vim settings 
set autoindent
set smartindent
set relativenumber
set numberwidth=4
set tabstop=4
set noswapfile
set shiftwidth=4
set ruler
set backspace=indent,eol,start
set listchars=tab:\┊\  
autocmd FileType python setlocal listchars=tab:\┊\ 
set list
set title
set titlestring=%F
set showcmd

" file settings
filetype on
filetype plugin on
filetype indent on

" Disable comment leading for all files
autocmd BufWinEnter * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Additional settings for specific file types
augroup filetype_specific_settings
  autocmd!
  " Disable comment leading for zsh files
  autocmd FileType zsh setlocal formatoptions-=c formatoptions-=r formatoptions-=o
  autocmd BufEnter,BufRead,BufWinEnter .zshrc setlocal formatoptions-=c formatoptions-=r formatoptions-=o

  " Disable comment leading for vimrc
  autocmd BufEnter,BufRead,BufWinEnter ~/.vimrc setlocal relativenumber
augroup END

" Reset formatoptions after loading a view (folding error fix) , disables comment leading
" autocmd BufWinEnter *.* setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" code folding
set foldenable
set foldlevelstart=10
set foldmethod=manual
hi Folded ctermfg=darkblue ctermbg=NONE
hi FoldColumn ctermbg=NONE
" Autocommands for saving and loading views (code folds)
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent! loadview

" enable syntax highlighting
syntax on

