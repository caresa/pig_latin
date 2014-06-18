module PigLatin
  VERSION = "0.0.1"
end

require_relative 'pig_latin/pig_latin.rb'
require_relative 'pig_latin/terminal.rb'

game = PigLatin::Terminal.new
game.grab_word
