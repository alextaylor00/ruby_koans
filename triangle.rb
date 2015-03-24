# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#


def triangle(a, b, c)
  sides = [a, b, c]
  lengths = Hash.new

  for side in sides
  	
  	if lengths[side] == nil
  		lengths[side] = 1
  	else
    	lengths[side] = lengths[side] + 1
    end
  end



  return :equilateral if lengths.length == 1
  return :isosceles if lengths.length == 2
  return :scalene if lengths.length == 3

end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
