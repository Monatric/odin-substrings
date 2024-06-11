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
                H[filtered_words_element] = 1
                # if H.include?(filtered_words_element)
                #     H.each { |key, val| H[filtered_words_element] += 1}
                # end
            end
        end
            
        p H
    end
    p H
end
p substrings("belowlow", DICTIONARY)