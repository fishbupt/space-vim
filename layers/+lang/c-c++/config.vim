if LayerLoaded('c-c++')

    if LayerLoaded('programming')
        autocmd Filetype c,cpp nnoremap <buffer> <F5> :update<Bar>execute 'AsyncRun! make '.shellescape(@%, 1)<CR>
    else
        autocmd Filetype c,cpp nnoremap <buffer> <F5> :update<Bar>execute '! make '.shellescape(@%, 1)<CR>
    endif

    augroup SPACEVIM_C
        autocmd!
        autocmd Filetype c,cpp setlocal cindent
    augroup END


endif
