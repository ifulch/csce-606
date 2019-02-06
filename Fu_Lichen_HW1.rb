# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  #arr.reduce(:+)
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  sum(arr.sort.last(2))
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length < 2
    return false
  else
    arr.combination(2).find{|x,y| x + y == n } ? true : false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return ('Hello, ' + name)
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if (s =~ /\A(?=[^aeiou])(?=[a-z])/i)
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  binary = s
  if (binary != "" && binary.delete("01") == "")                                      
    return (binary.to_i(2)).modulo(4)==0                                             
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_accessor :isbn, :price
  def initialize isbn, price
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end
  def price_as_string
    format("$%.2f", @price)
  end
end
