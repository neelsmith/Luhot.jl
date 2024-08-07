struct HMPGender <: HebrewMorphologicalProperty
    code::Int64
    function HMPGender(code)
        code in keys(codetogenderdict) ? new(code) : throwDomainError(string(code, " is out of range for a Hebrew gender."))
    end
end


"""Override Base.show for a case property.
$(SIGNATURES)
"""
function show(io::IO, prop::HMPGender)
    print(io, label(prop))
end

"""Create a `HMPGender` from its string name."""
function hmpGender(s::S)::HMPGender where S <: AbstractString
    if s in keys(gendertocodedict) 
        HMPGender(gendertocodedict[s])
    else 
        DomainError(string(s, " is not a valid value for gender."))
    end
end

"""Create a `HMPGender` from its integer code."""
function hmpGender(code::Int64)
    HMPGender(code)
end

"""Find code for gender."""
function code(gndr::HMPGender)
    gndr.code
end


"""Find label for gender."""
function label(tns::HMPGender)
    codetogenderdict[tns.code]
end

"""Dict mapping codes to labels for gender.

$(SIGNATURES)
"""
const codetogenderdict = Dict(
    1 => "masculine",
    2 => "feminine",
    3 => "common"
)


"""Dict mapping codes to labels for gender.

$(SIGNATURES)
"""
const gendertocodedict = Dict(
    "masculine"  => 1,
    "feminine" => 2,
    "common" => 3
)