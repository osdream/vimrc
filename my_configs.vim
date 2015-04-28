" vmap <C-x> :!pbcopy<CR>
" vmap <C-c> :w !pbcopy<CR><CR>

set list
set listchars=tab:»\ ,trail:.

" overwrite the config in plugins_config.vim
let g:NERDTreeWinPos = "left"

" MiniBufExpl
" let g:miniBufExplMapWindowNavVim = 1
" let g:miniBufExplMapWindowNavArrows = 1
" let g:miniBufExplMapCTabSwitchBufs = 1
" let g:miniBufExplModSelTarget = 1

" Airline
" let g:airline_theme = 'wombat'                       " Airline colorscheme
let g:airline#extensions#tabline#enabled = 1         " Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t'     " Show just the filename
let g:airline#extensions#tabline#tab_nr_type = 1     " Show buffer #, not # of splits
let g:airline#extensions#tabline#show_tab_nr = 1     " Show buffer # in tabline
let g:airline#extensions#tabline#show_tab_type = 1   " Show the tab type
let g:airline#extensions#tabline#buffer_idx_mode = 1 " Show buffer index

" navigate around buffers
nmap <leader>a :b#<CR>
nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>

" navigate to specific buffers
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <C-i> <Plug>AirlineSelectPrevTab
nmap <C-o> <Plug>AirlineSelectNextTab

