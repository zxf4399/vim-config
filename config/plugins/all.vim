" Plugin Keyboard-Mappings
" ---

if dein#tap('denite.nvim')
	nnoremap <silent><LocalLeader>r :<C-u>Denite -resume -refresh -no-start-filter<CR>
	nnoremap <silent><LocalLeader>f :<C-u>Denite file/rec<CR>
	nnoremap <silent><LocalLeader>g :<C-u>Denite grep -start-filter<CR>
	nnoremap <silent><LocalLeader>b :<C-u>Denite buffer -default-action=switch<CR>
	nnoremap <silent><LocalLeader>i :<C-u>Denite file/old<CR>
	nnoremap <silent><LocalLeader>d :<C-u>Denite directory_rec directory_mru -default-action=cd<CR>
	nnoremap <silent><LocalLeader>v :<C-u>Denite neoyank -buffer-name=register<CR>
	xnoremap <silent><LocalLeader>v :<C-u>Denite neoyank -buffer-name=register -default-action=replace<CR>
	nnoremap <silent><LocalLeader>l :<C-u>Denite location_list -buffer-name=list -no-start-filter<CR>
	nnoremap <silent><LocalLeader>q :<C-u>Denite quickfix -buffer-name=list -no-start-filter<CR>
	nnoremap <silent><LocalLeader>m :<C-u>Denite mark<CR>
	nnoremap <silent><LocalLeader>n :<C-u>Denite dein<CR>
	nnoremap <silent><LocalLeader>j :<C-u>Denite jump change file/point -no-start-filter<CR>
	nnoremap <silent><LocalLeader>u :<C-u>Denite junkfile:new junkfile -buffer-name=list<CR>
	nnoremap <silent><LocalLeader>o :<C-u>Denite outline -no-start-filter<CR>
	nnoremap <silent><LocalLeader>s :<C-u>Denite session -buffer-name=list<CR>
	nnoremap <silent><LocalLeader>t :<C-u>Denite tag<CR>
	nnoremap <silent><LocalLeader>p :<C-u>Denite jump<CR>
	nnoremap <silent><LocalLeader>h :<C-u>Denite help<CR>
	nnoremap <silent><LocalLeader>w :<C-u>Denite file/rec -buffer-name=memo -path=~/docs/blog<CR>
	nnoremap <silent><LocalLeader>x :<C-u>Denite file_mru<CR>
	nnoremap <silent><LocalLeader>z :<C-u>Denite z -buffer-name=list<CR>
	nnoremap <silent><LocalLeader>; :<C-u>Denite command_history command<CR>
	nnoremap <silent><expr><LocalLeader>/ wordcount().chars > 10000 ?
		\ ":\<C-u>Denite -search line/external\<CR>"
		\ : ":\<C-u>Denite -search line\<CR>"
	nnoremap <silent><expr><LocalLeader>* wordcount().chars > 10000 ?
		\ ":\<C-u>DeniteCursorWord -no-start-filter -search line/external\<CR>"
		\ : ":\<C-u>DeniteCursorWord -no-start-filter -search line\<CR>"

	" Open Denite with word under cursor or selection
	nnoremap <silent> <Leader>gt :DeniteCursorWord tag:include -no-start-filter -immediately<CR>
	nnoremap <silent> <Leader>gf :DeniteCursorWord file/rec -no-start-filter<CR>
	nnoremap <silent> <Leader>gg :DeniteCursorWord grep -no-start-filter<CR>
	vnoremap <silent> <Leader>gg
		\ :<C-u>call <SID>get_selection('/')<CR>
		\ :execute 'Denite -no-start-filter grep:::'.escape(@/, ' :')<CR><CR>

	function! s:get_selection(cmdtype)
		let temp = @s
		normal! gv"sy
		let @/ = substitute(escape(@s, '\' . a:cmdtype), '\n', '\\n', 'g')
		let @s = temp
	endfunction
endif

if dein#tap('defx.nvim')
	nnoremap <silent> <LocalLeader>e
		\ :<C-u>Defx -toggle -buffer-name=explorer`tabpagenr()`<CR>
	nnoremap <silent> <LocalLeader>a
		\ :<C-u>Defx
		\   -search=`escape(expand('%:p'), ' :')`
		\   -buffer-name=explorer`tabpagenr()`<CR>
endif

if dein#tap('vim-choosewin')
	nmap -         <Plug>(choosewin)
	nmap <Leader>- :<C-u>ChooseWinSwapStay<CR>
endif

if dein#tap('accelerated-jk')
	nmap <silent> j <Plug>(accelerated_jk_gj)
	nmap <silent> k <Plug>(accelerated_jk_gk)
endif

" vim: set ts=2 sw=2 tw=80 noet :
