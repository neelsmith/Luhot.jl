

function hithpael_perfect(root::String,form::HebrewFiniteVerb)
    #verbclass = rootclass(root)    

    #if verbclass == :strong
        hithpael_perfect_strong(root, form)
    #else
    #    @warn("Verb class $(verbclass) not yet implemented")
    #    nothing
    #end

end

"""Generate requested person+number+gender of the perfect for the given strong verb."""
function hithpael_perfect_strong(root::String,verb::HebrewFiniteVerb)
    consonants = collect(BiblicalHebrew.unpointed(root))
    form = pngSummary(verb)
    # initial = check if consonants[1] is in the begadkefat and
    # if so add daghesh
    #
    # for consonants 2-3, check depending on person-number for need of dagesh

    if form == "3sm"
       
        string(BiblicalHebrew.hiriq("ה"), BiblicalHebrew.sheva("ת"), BiblicalHebrew.patah(consonants[1]), BiblicalHebrew.tsere(BiblicalHebrew.dagesh(consonants[2])), "י", consonants[3])

    else
        @warn("Form $(form) not recognized or not yet implemented.")
    end
    
end




function hithpael_imperfect(root::String,form::HebrewFiniteVerb)
    #verbclass = rootclass(root)    

    #if verbclass == :strong
        hithpael_imperfect_strong(root, form)
    #else
    #    @warn("Verb class $(verbclass) not yet implemented")
    #    nothing
    #end

end


"""Generate requested person+number+gender of the perfect for the given strong verb."""
function hithpael_imperfect_strong(root::String,verb::HebrewFiniteVerb)
    consonants = collect(BiblicalHebrew.unpointed(root))
    form = pngSummary(verb)
    
    if form == "3sm"
        #string(BiblicalHebrew.hiriq("י"), BiblicalHebrew.sheva(consonants[1]), BiblicalHebrew.holam(consonants[2]), consonants[3])
        string(BiblicalHebrew.hiriq("י"), BiblicalHebrew.sheva("ת"), BiblicalHebrew.patah(consonants[1]), BiblicalHebrew.tsere(BiblicalHebrew.dagesh(consonants[2])), "י", consonants[3])



        #=
    elseif form == "3sf"
        string(BiblicalHebrew.qamats(consonants[1]) |> BiblicalHebrew.metheg, BiblicalHebrew.sheva(consonants[2]), BiblicalHebrew.qamats(consonants[3]), BiblicalHebrew.he_ch)

    elseif form == "2sm"
        string(BiblicalHebrew.qamats(consonants[1]), BiblicalHebrew.patah(BiblicalHebrew.ole(consonants[2])), BiblicalHebrew.sheva(consonants[3]), BiblicalHebrew.dagesh("ת") |> BiblicalHebrew.qamats)

    elseif form == "2sf"
        string(BiblicalHebrew.qamats(consonants[1]), BiblicalHebrew.patah(consonants[2]), BiblicalHebrew.sheva(consonants[3]), BiblicalHebrew.dagesh("ת") |> BiblicalHebrew.sheva)
    

    elseif form == "1sc" || form == "1sm" || form == "1sf"
        string(BiblicalHebrew.qamats(consonants[1]), BiblicalHebrew.patah(BiblicalHebrew.ole(consonants[2])), BiblicalHebrew.sheva(consonants[3]), BiblicalHebrew.mappiq("נו"))


    elseif form == "3pc"
        string(BiblicalHebrew.qamats(consonants[1]), BiblicalHebrew.sheva(consonants[2]), consonants[3], BiblicalHebrew.mappiq("נו"))


    elseif form == "2pm"
        string(BiblicalHebrew.sheva(consonants[1]), BiblicalHebrew.patah(consonants[2]), BiblicalHebrew.sheva(consonants[3]), BiblicalHebrew.seghol(BiblicalHebrew.dagesh("ת")), "מ")

    elseif form == "2pf"
        string(BiblicalHebrew.sheva(consonants[1]), BiblicalHebrew.patah(consonants[2]), BiblicalHebrew.sheva(consonants[3]), BiblicalHebrew.seghol(BiblicalHebrew.dagesh("ת")), "ן")


    elseif form == "1pc"
        string(BiblicalHebrew.qamats(consonants[1]), BiblicalHebrew.ole(BiblicalHebrew.patah(consonants[2])), BiblicalHebrew.sheva(consonants[3]), BiblicalHebrew.mappiq("נו"))

=#
    else
        @warn("Form $(form) not recognized or not yet implemented.")
    end
    
end