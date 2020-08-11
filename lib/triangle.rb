require 'pry'
class Triangle
 attr_accessor :a, :b, :c, :kind

  def initialize (a,b,c)
    @a = a 
    @b = b 
    @c = c
  end

  
  def kind 
  
      if (a * b * c) == 0 ||(a + b) <= c || (c + b) <= a || (c + a) <= b
      
      
        raise TriangleError
        
    
      elseif a == b && a == c
      :equilateral
      
      elseif a == b || a == c || b == c
      :isosceles
      
      else
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      puts "Not a Triangle!"
    end
  end
end