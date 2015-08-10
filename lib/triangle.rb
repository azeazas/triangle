class Triangle
  define_method(:initialize) do |side1, side2, side3|
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  define_method(:triangle?) do
    if @side1.+(@side2) <= @side3
      "not a triangle"
    elsif @side1.+(@side3) <= @side2
      "not a triangle"
    else @side2.+(@side3) <= @side1
      "not a triangle"
      if @side1 = @side2 && @side1 = @side3
        "equilateral"
      end
    end
  end
end
