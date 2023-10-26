using PMSimulator
using Documenter

DocMeta.setdocmeta!(PMSimulator, :DocTestSetup, :(using PMSimulator); recursive=true)

makedocs(;
    modules=[PMSimulator],
    authors="Acme Corp",
    repo="https://github.com/timknab/PMSimulator.jl/blob/{commit}{path}#{line}",
    sitename="PMSimulator.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://timknab.github.io/PMSimulator.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/timknab/PMSimulator.jl",
    devbranch="main",
)
