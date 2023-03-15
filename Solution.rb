def top_three_words(text)
  words = text.downcase.scan(/[a-z]+(?:'[a-z]+)*/)
  word_counts = Hash.new(0)
  words.each { |word| word_counts[word] += 1 }
  sorted_word_counts = word_counts.sort_by { |word, count| -count }
  top_words = sorted_word_counts.first(3).map { |word, count| word.downcase }
  if sorted_word_counts.length < 3
    top_words = sorted_word_counts.first(sorted_word_counts.length).map { |word, count| word.downcase }
  end

  top_words
end

puts top_three_words("In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.")
