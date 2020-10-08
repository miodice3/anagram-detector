require 'pry'

class Anagram

    attr_accessor :word

    def initialize(word)
        @word = word
    end

def match(array_of_possible_anagrams)
    return_array = []
    array_of_possible_anagrams.each do |each_word|
#        binding.pry
        if each_word.chars.sort.join == @word.chars.sort.join
            return_array << each_word
        end
    end
    return_array
end

end

listen = Anagram.new("listen")
listen.match(%w(enlists google inlets banana))