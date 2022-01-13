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





binding-pry