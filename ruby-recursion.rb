require 'pry-byebug'

#Method to print a specified number of digits of the Fibonacci sequence
def fibs(n) 
  x = 0
  y = 1
  i = 0
  for i in 0..n
     p fiby = x + y
     x = y
     y = fiby
     i += 1
  end
end


#Method to pring a specified number of digits of the Fibonacci sequence using recursion
def fibs_rec(n)
  if n <= 0
    return [0]
  elsif n == 1
    return [0,1]
  else
    array = fibs_rec(n-1)
    array << array [-1] + array [-2]
    p array
    return array
  end
end


#Merge-sort array method
 def merge_sort(array)
    #base case
    return array if array.length < 2

    #divide and conquer the array using recursion
    endpoint = array.length
    midpoint = array.length/2
    p left_array = array[0...midpoint]
    p right_array = array[midpoint..endpoint]
    p left_sorted = merge_sort(left_array)
    p right_sorted = merge_sort(right_array)

    #merge the two already sorted arrays into a new combined sorted array (except for the last remaining value)
    new_array = []
    until left_sorted.empty? || right_sorted.empty? do  
      left_sorted.first <= right_sorted.first ? new_array << left_sorted.shift : new_array << right_sorted.shift
    end

    #add that last remaining value to the new array and return it
    return p (new_array + left_sorted + right_sorted) 
  end




my_array = [2, 4, 7, 5, 6, 1, 3, 8]

binding-pry
