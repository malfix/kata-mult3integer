class Exercise
  def find_max_product(*list)
    @sorted = list.sort
    [m(0,1,2), m(0,1,-1), m(-1,-2,-3)].max #, m(0,-1,-2) non serve in quanto il minimo elemento verrebbe preso solo se 0, ma questo caso produce gli stessi risutati di m(-1,-2,-3)
  end

  def m(i1,i2,i3)
    @sorted[i1] * @sorted[i2] * @sorted[i3]
  end
end
