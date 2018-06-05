require "pry"
# 1: #SORT_ARRAY_ASC
# Build a method sort_array_asc that takes in an array of integers and returns a copy of the array with the integers in ascending order.

def sort_array_asc(array_of_int)
array_of_int.sort
end


#
# 2: SORT_ARRAY_DESC
# # Build a method sort_array_desc that takes in an array of integers and returns a copy of the array with the integers in descending order. Remember that .sort takes a block in which you can specify how you want your array sorted.
def sort_array_desc(array_of_int)
array_of_int.sort{|x,y| y <=> x}
end


#  3: #SORT_ARRAY_CHAR_COUNT
# Build a method sort_array_char_count that takes in an array of strings and returns a copy of the array with the strings ordered in ascending order by length. Remember that .sort takes a block in which you can specify how you want your array sorted.

def sort_array_char_count(array_of_s)
array_of_s.sort{|x,y| x.length <=> y.length}
end

#  4: #SWAP_ELEMENTS
# Build a method swap_elements that takes in an array and swaps the second and third elements. Remember that array indices start at 0, so the second element has an index of 1 and the third element has an index of 2.


def swap_elements(array)
new_array =[]
element_1 = 0
i = 0
  while i < array.length
    if i == 1
      element_1 = array[1]
      i += 1
    elsif i == 2
      new_array.push(array[i])
      new_array.push(element_1)
      i += 1
    else
    new_array.push(array[i])
    i += 1
    end
  end
new_array
end

# 5: #REVERSE_ARRAY
# Build a method reverse_array that takes in an array of integers and returns a copy of the array with the elements in reverse order.

def reverse_array(array_of_int)
  array_of_int.reverse
end

# 6: #KESHA_MAKER
# Build a method called kesha_maker that takes in an array of strings and replaces the third character in each string with a $ ("dollar sign")—Ke$ha style. Use the .each method to iterate and build a new array to return at the end of your method, just like we did in the "My Each" lab.

def kesha_maker(array_of_s)
kesha_string_array = []
  array_of_s.each do |string_element|
    kesha_string_array.push(string_element[0..1] + "$" + string_element[3..string_element.length])
  end
kesha_string_array
end


# 7: #FIND_A
# Build a method find_a that returns all the strings in the array passed to it that start_with? (hint) the letter "a". You'll want to use a high level iterator for this that finds, selects, or detects elements based on a condition.


def find_a(array_of_s)
  array_of_s.keep_if do |s_elements|
    s_elements.start_with?("a")
  end
end






# 8: #SUM_ARRAY
# Build a method sum_array that adds together all of the integers in the array and returns their sum.
#
# Advanced: Try using the .inject method here.

def sum_array(array_of_int)
  array_of_int.inject {|sum, x| sum + x }
end


# 9: #ADD_S
# Build a method that adds an "s" to each word in the array except for the second element in the array ("feet" is already plural).
#
# Advanced: Iterators in Ruby are chainable, see if you can use .each_with_index in addition to .collect to solve this one in an elegant way. What happens if you write:
def add_s(array_of_s)
  array_of_s.each_with_index.map do |word, index|
    if index == 1
      word
    else
      word + "s"
    end
  end
end
