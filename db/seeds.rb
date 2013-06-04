File.open("./app/our_dictionary").each_line{ |word| Word.create(word: word.strip)}


