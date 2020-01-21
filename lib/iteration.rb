def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  
  sentences = [];
  
  src.length.times { |i|
    food1 = src[i][0]
    food2 = src[i][1]
    
    sentences << "I love #{food1} and #{food2} on my pizza"
  }
  
  sentences
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  
  larger_numbers = []
  
  src.length.times { |i|
    larger_number = src[i][0]
    
    src[i].length.times { |j|
      current_number = src[i][j]
      
      if larger_number < current_number
        larger_number = current_number
      end
    }
    
    larger_numbers << larger_number
  }
  
  larger_numbers
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  total = 0
  
  src.length.times { |i|
    all_numbers_are_even = true
    subtotal = 0
    
    src[i].length.times { |j|
      current_number = src[i][j]
      
      if !is_even(current_number)
        all_numbers_are_even = false
      else
        subtotal += current_number
      end
    }
    
    if all_numbers_are_even
      total += subtotal
    end
  }
  
  total
end

def is_even(num)
  num % 2 === 0
end
