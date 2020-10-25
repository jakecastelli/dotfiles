let g:mapleader=","
colorscheme gruvbox
set bg=dark

" Encoding
set encoding=UTF-8

"basic
set nu
set rnu

" Whitespace
set wrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Cursor motion
set scrolloff=8
set matchpairs+=<:> " use % to jump between pairs
"set backspace=indent,eol,start

" Enable spellcheck for markdown files
autocmd BufRead,BufNewFile *.md setlocal spell

" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" === vim-better-whitespace === "
"   <leader>y - Automatically remove trailing whitespace
nmap <leader>y :StripWhitespace<CR>

" Random colourscheme selection
function! RandomScheme()
  let choices = ['gruvbox', 'onehalfdark' ]
  let index = RandomNumber(len(choices))
  execute 'colorscheme' choices[index]
endfunction


function! RandomNumber(limit)
  let components = split(reltimestr(reltime()), '\.')
  let microseconds = components[-1] + 0
  return microseconds % a:limit
endfunction

call RandomScheme()
