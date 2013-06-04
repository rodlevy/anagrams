class Word < ActiveRecord::Base
  # Remember to create a migration!
#   def anagrams(word)
#     users_word = word.sort
    
#     Word.all.each
#     var2 = dictionary.next

#     if var1.sort == var2.sort
#       add var2 to collection
#     else
#       do nothing
#     end
#     post collection to form
#   end


  def anagrams
    searching_word = self.word.chars.sort.join

    solution =[]

    Word.all.each do |word|
      if word.word.chars.sort.join == searching_word
        # console.log("found match with #{word}")
        solution << word.word
      end
    end
    solution
    
  end
  
end
