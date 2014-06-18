# require "./pig_latin/version"

module PigLatin

  def self.translate(word)
    if /^y/.match(word[0])
       slicer = word.slice!(0..0)
       word.concat(slicer.to_s + "ay")
    elsif /^[aeiou]/i.match(word[0])
       word.concat("way")
    elsif /(?i:(?![aeiou])[a-z])/.match(word[0]&&word[1])
       slicer = word.slice!(0..1)
       word.concat(slicer.to_s + "ay")
    elsif /^[^aeiou]/i.match(word[0])
      slicer = word.slice!(0..0)
      word.concat(slicer.to_s + "ay")
    else
      "enter a valid word"
    end
  end

end
