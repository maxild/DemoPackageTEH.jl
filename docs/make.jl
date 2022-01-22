using DemoPackageTEH
using Documenter

DocMeta.setdocmeta!(DemoPackageTEH, :DocTestSetup, :(using DemoPackageTEH); recursive=true)

makedocs(;
    modules=[DemoPackageTEH],
    authors="Morten Maxild <mmaxild@gmail.com> and contributors",
    repo="https://github.com/maxild/DemoPackageTEH.jl/blob/{commit}{path}#{line}",
    sitename="DemoPackageTEH.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://maxild.github.io/DemoPackageTEH.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/maxild/DemoPackageTEH.jl",
    devbranch="main",
)
