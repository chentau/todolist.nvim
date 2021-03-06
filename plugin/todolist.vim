if exists("g:todolist_loaded")
    finish
endif

let s:save_cpo = &cpo
set cpo&vim

if !exists("g:todo_keywords")
    let g:todo_keywords = ["TODO", "DONE"]
endif

if !exists("g:todo_tags")
    let g:todo_tags = ["home", "work", "appointment"]
endif

" highlight group for floating todo window
hi TodoFloatWin ctermbg=0, ctermfg=None

let g:todolist_loaded=1

let &cpo = s:save_cpo
unlet s:save_cpo
