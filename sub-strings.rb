  def substrings(word, dictionary)
    dictionary.inject(Hash.new(0)) do |result, entry|
      entry_arr = entry.chars

      n = word.each_char.each_cons(entry.length).count(entry_arr)

      result[entry] += n if n > 0
      result
    end

  end