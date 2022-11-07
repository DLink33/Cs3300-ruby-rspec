# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return arr.sum
end

def max_2_sum arr
  if arr.size == 0
    return 0
  elsif arr.size == 1
    return arr[0]
  else
    max1 = arr.max
    arr.delete_at(arr.index(max1))
    max2 = arr.max
    return max1+max2
  end
end

def sum_to_n? arr, n
  return arr.permutation(2).any? {|pair| pair[0]+pair[1] == n}
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if s.size == 0
    return false
  end
  s = s.downcase
  start = s[0]
  return (/[a-z]/.match?(start) and !(['a','e','i','o','u'].include?(start)))
end

def binary_multiple_of_4? s
  str = s.delete(' ')
  return false if !(/[0-1]/.match?(str))
  return str.to_i(base=2) % 4 == 0
end

# Part 3

class BookInStock
  def initialization(isbn, price)
    @isbn = isbn
    @price = price
  end
  def pice_as_string
    price = @price.to_f
    price = price.round(2)
    price = price.to_s
    return '$'+price
  end 
end
