class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
    
  # the code was so concise before I had to add in the punctuation check. bummer. 
  # It was a fun and interesting experience though as I've never coded in Ruby before. 
  def self.marklar(str)
      result = ''
      splt_str = str.split(' ')
      splt_str_size = splt_str.length
      $i= 0
      while $i < splt_str_size
        test_word = splt_str[$i]
            if test_word.length > 4
                if test_word[0] == test_word[0].capitalize
                    if test_word[test_word.length-1].match(/[[:punct:]]/)
                          punc = test_word[test_word.length-1] 
                            test_word = 'Marklar'
                            test_word.concat(punc)
                    else
                            test_word = 'Marklar'
                    end
                else
                    if test_word[test_word.length-1].match(/[[:punct:]]/)
                          punc = test_word[test_word.length-1] 
                            test_word = 'marklar'
                            test_word.concat(punc)
                    else    
                            test_word = 'marklar'
                    end
                end
            end
      result.concat(test_word + ' ')
    
      $i+= 1
      end
            

      final_result = result.chop
      return final_result
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    num1 = 1 
    num2 = 0
    prevnum = 0
    evens = 0
    $i= 1 
    while $i < nth
        num2 = prevnum + num1
	       if num2%2 == 0
             evens+= num2
	       end
	  prevnum = num1
	  num1 = num2
	  $i+= 1
    end 
    return evens   
  end

end

