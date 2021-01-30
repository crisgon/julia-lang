"""
    count_nucleotides(strand)

The frequency of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)
    dict = Dict('A' => 0, 'C' => 0, 'G' => 0, 'T' => 0)

    for letter in strand
        if  get(dict, letter, -1) == -1
            throw(DomainError("strand with invalid nucleotides"))
        end
            dict[letter] = get(dict, letter, 0) + 1
    end
    dict
end
