class Fixnum
  def closest_fibonacci
    for num in (0..self)
      if (Fibonacci.nth(num) > self)
        return Fibonacci.nth(num-1) 
      end
    end
  end
end

module Fibonacci
  def Fibonacci.nth(n)
    return n if [0, 1].include? n
    nth(n-1) + nth(n-2) if n > 1
  end
end