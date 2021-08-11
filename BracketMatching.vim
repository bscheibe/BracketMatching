""" BracketMatching
""" Bruce Scheibe
""" Automatically inserts a closing bracket/parentheses/quotation when typing an opening one in insert mode.


" Setup.
let g:bracket_matching=1


" Vim command
ab bracketmatching call ToggleBracketMatching()


if has("gui_running")
        amenu BracketMatching.Toggle\ Bracket\ Matching :call ToggleBracketMatching
endif


function! ToggleBracketMatching()
        if g:bracket_matching
                inoremap " ""<left>
                inoremap ' ''<left>
                inoremap ( ()<left>
                inoremap [ []<left>
                inoremap { {}<left>
        else
                try
                        iunmap "
                        iunmap '
                        iunmap (
                        iunmap [
                        iunmap {
                catch
                endtry
        endif
        let g:bracket_matching=!g:bracket_matching
endfunction


" Initialize.
call ToggleBracketMatching()
