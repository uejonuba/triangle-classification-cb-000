class Triangle
  def initialize(sidea,sideb,sidec)
    @sideA = sidea
    @sideB = sideb
    @sideC = sidec
  end

  def kind
    sum1 = @sideA + @sideB
    sum2 = @sideA + @sideC
    sum3 = @sideB + @sideC

    sumtest1 = sum1 > @sideC
    sumtest2 = sum2 > @sideB
    sumtest3 = sum3 > @sideA

    if @sideA == 0 || @sideB == 0 || @sideC == 0
      raise TriangleError
    elsif !sumtest1 || !sumtest2 || !sumtest3
      raise TriangleError
    else
      return :equilateral if (@sideA == @sideB) && (@sideB == @sideC)
      return :isosceles if (@sideA == @sideB) || (@sideB == @sideC) || (@sideA == @sideC)
      return :scalene
    end
  end

end

class TriangleError < StandardError
 # triangle error code
end
