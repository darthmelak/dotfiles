execute pathogen#infect()

" UTF-8 az alap fájlé s a config fájl formátum
scriptencoding utf-8
set encoding=utf-8

" Kod kiemeles
syntax on

" Filetipus erzekeles
filetype on
filetype indent on
filetype plugin on

" Eger
set mouse=a

" Sorszam mutatasa alul
set ruler

" Sorszamok bal oldalt
set number
set relativenumber

" Hatter
colorscheme industry

" Parancs mutatas
set showcmd

" Zarojel parok mutatasa
set showmatch

" Leszarja a kisnagybetuket kereseskor
set ignorecase
set smartcase

" Keresesi talalatok kiemelese
set hlsearch

" Kereséshez ugrás gépelés közbe
set incsearch

" Nem lathato karakterek muTatasa ( de csak sorvegi space es tab )
set list
set listchars=tab:>·,trail:·

" Kod kiegeszites (Ctrl+P)
set showfulltag
set completeopt=menuone,longest
:inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Tab és behúzások
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set shiftround
set smartindent

" Ha egy fajl megvaltozott csak toltsd be, ne kerdezd
set autoread

" Jelenlegi sor szinezese
set cul
hi CursorLine term=none cterm=none ctermbg=8

" GUI Menu es Toolbar eltuntetese
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar

" Powerline
" let $PYTHONPATH='/usr/lib/python3.4/site-packages'
" set laststatus=2

" Airline tabline felul a nyitott pufferekkel
" let g:airline#extensions#tabline#enabled = 1

" let g:airline_powerline_fonts = 1

" Taglista jobbra
let Tlist_Use_Right_Window   = 1

" NerdTree help szöveg és bookmarkok eltöntetése
" let NERDTreeMinimalUI = 1

" NerdTree automatikus indítása
" autocmd VimEnter * if &filetype !=# 'gitcommit' | NERDTree | wincmd p | endif

function! s:CloseIfOnlyControlWinLeft()
  if winnr("$") != 1
    return
  endif
  if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
        \ || &buftype == 'quickfix'
    q
  endif
endfunction
augroup CloseIfOnlyControlWinLeft
  au!
  au BufEnter * call s:CloseIfOnlyControlWinLeft()
augroup END
" let g:neocomplete#enable_at_startup = 1

