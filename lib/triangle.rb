require 'pry'
class Triangle
 attr_accessor :a, :b, :c, :kind

  def initialize (a,b,c)
    @a = a 
    @b = b 
    @c = c
  end

  
  def kind 
    #binding.pry
      if (a * b * c) == 0 ||(a + b) <= c || (c + b) <= a || (c + a) <= b
      
      #begin 
        raise TriangleError
        #rescue TriangleError => error 
        #puts error.message
      end
    
      elseif a == b && a == c
      self.kind = :equilateral
      elseif a == b || a == c || b == c
      self.kind = :isosceles
      else
      self.kind = :scalene
    end
  end

  class TriangleError < StandardError
    def message
      puts "Not a Triangle!"
    end
  end
end