require 'pry'

class Anagram
    attr_accessor :name
    ## Makes word read/writeable
    def initialize(word)
        ## Sets word to @name attribute
        @name = word
    end
    def match(array)
        ## Takes in array of words
        array.select do |x|
            ## Iterates through given array of words
            x.split("").sort == @name.split("").sort
            ## Splits word into array of single letter strings
            ## Sorts single letter strings fromy a-z
            ## @name is given string
            ## Splits @name string into single letter strings
            ## Sorts letter strings from a-z
            ## Compares x array of sorted letters and @name array of sorted letters
            ## Returns true/false if they are matching
        end
    end
end