# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  i = 0
  sum = 0
  while i < arr.length
     sum = sum + arr[i]
     i = i+1
  end
  returnSum = sum
end

def max_2_sum arr
  # YOUR CODE HERE
  i = 0
  max1 = -128
  max2 = -128
  if arr.length > 1
    while i < arr.length
      if arr[i] > max1
        if max1>max2
          max2 = max1
        end
        max1 = arr[i]
      elsif arr[i] > max2
        max2 = arr[i]
      end
      i = i+1
    end
  else
    max1 = 0
    if arr.length > 0
       max1 = arr[0]
    end
    max2 = 0
  end
  sum_max = max1+max2
end
 
def sum_to_n? arr, n
  # YOUR CODE HERE
  sum = 0
  i = 0
  while i < arr.length-1
    tmp1 = arr[i]
    tmp2 = arr[i+1]
    sum = tmp1 + tmp2
    if sum == n
      return true
    end
    i = i + 1
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  msg = "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length == 0
      return false
  end
  fc = s.chars.first.downcase
  if fc == 'a' || fc == 'e' || fc == 'i' || fc == 'o' || fc == 'u'
    return false
    elsif !(fc =~ /[a-z]/)
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  i = 0
  num = 0
  if !(s[/[0-1]+/]  == s)
      return false
  end
  binChars = s.split('')
  binChars.each { |ch|
      if ch == "1"
         num = num + (2**(s.length - i - 1))
      end
      i = i + 1
  }
  if num % 4 == 0
      return true
  end
  return false
end

# Part 3

class BookInStock
# Constructor
  def initialize(isbn,price)
      unless !(isbn.length == 0)
          raise ArgumentError.new("You must have an isbn")
      end
      unless price > 0
          raise ArgumentError.new("Price must be nonnegative greater than 0")
      end
      @isbn = isbn
      @price = price
  end
# Getters and Setters
  attr_reader :price
  attr_reader :isbn
  def isbn=(new_isbn)
      unless !(new_isbn.length == 0)
          raise ArgumentError.new("You cannot set an empty isbn")
      end
      @isbn = new_isbn
  end
  def price=(new_price)
      unless price > 0
          raise ArgumentError.new("Price must be nonnegative greater than 0")
      end
      @price = new_price
  end
  # Price Function
  def price_as_string()
      roundedPrice = @price.round(2)
      priceString = "$" + roundedPrice.to_s
      checkZero = roundedPrice.to_s.partition('.').last
      if checkZero.length == 0
          priceString = priceString + "00"
      elsif checkZero.length == 1
          priceString = priceString + "0"
      end
      return priceString
  end
end
