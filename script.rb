require 'pry-byebug'

DICTIONARY = [
    "below",
    "down",
    "go",
    "going",
    "horn",
    "how",
    "howdy",
    "it",
    "i",
    "low",
    "own",
    "part",
    "partner",
    "sit"
]

H = Hash.new

def substrings(words, dictionary)
    word_array = words.split(' ')
    word_array.map do |word_array_element|
        dictionary.each do |filtered_words_element|
            if word_array_element.match?(filtered_words_element) == true
                if H.include?(filtered_words_element)
                    H[filtered_words_element] += 1
                else
                    H[filtered_words_element] = 1
                    
                end
            end
        end
    end
    H
end
p substrings("Howdy partner, sit down! How's it going?", DICTIONARY)