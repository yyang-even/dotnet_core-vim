if exists("current_compiler")
    finish
endif
let current_compiler = "dotnet_core"


if exists(":CompilerSet") != 2		" older Vim always used :setlocal
    command -nargs=* CompilerSet setlocal <args>
endif


CompilerSet makeprg=dotnet\ build\ /nologo\ /p:GenerateFullPaths=true\ /clp:NoSummary\ /verbosity:quiet

CompilerSet errorformat=%f(%l\\\,%c):\ %tarning\ %m\ [%.%#]
CompilerSet errorformat+=%f(%l\\\,%c):\ %trror\ %m\ [%.%#]
