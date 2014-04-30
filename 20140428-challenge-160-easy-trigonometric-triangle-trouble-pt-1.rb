# A triangle on a flat plane is described by its angles and side lengths, and you don't need to be given all of the angles and side lengths to work out the rest. In this challenge, you'll be working with right-angled triangles only.
# Here's a representation of how this challenge will describe a triangle. Each side-length is a lower-case letter, and the angle opposite each side is an upper-case letter. For the purposes of this challenge, the angle C will always be the right-angle. Your challenge is, using basic trigonometry and given an appropriate number of values for the angles or side lengths, to find the rest of the values.

# On the console, you will be given a number N. You will then be given N lines, expressing some details of a triangle in the format below, where all angles are in degrees; the input data will always give enough information and will describe a valid triangle. Note that, depending on your language of choice, a conversion from degrees to radians may be needed to use trigonometric functions such as sin, cos and tan.

# 3
# a=3
# b=4
# C=90

# a=3
# b=4
# c=5
# A=36.87
# B=53.13
# C=90

# r^2 + s^2 = h^2

# Sine = Opposite ÷ Hypotenuse
# Cosine = Adjacent ÷ Hypotenuse
# Tangent = Opposite ÷ Adjacent


def sides_test sides
  counter = 0
  sides.each do |side|
    if side != nil
      counter = counter + 1
    end
  end
  if counter == 2 or counter == 3
    return [true, counter]
  else
    return [false, counter]
  end
end

def solve_for_sides known, a, b, c
  if known == 2
    if a == nil
      
    elsif b == nil

    elsif c == nil
      c = Math.sqrt(a ** 2 + b ** 2)
    end
  elsif known == 3
    
  end
  return [a, b, c]
end

# Set triangle variables to blank
a = nil
b = nil
c = nil
A = nil
B = nil
C = nil

puts 'How many details of a triangle would you like to give?'
puts 'Your details must give enough information to describe a valid triangle.'
details_count = gets.chomp.to_i
puts 'Provide your details'
puts 'Give each side-length as a lower-case letter and the angle opposite each side as an upper-case letter. C must always be the right-angle. (format as a=3, b=4, C=90)'
details = []
details_count.times do
  details.push gets.chomp
end
details.each do |detail|
  set_detail = (detail[2,(detail.length - 2)]).to_i
  case detail[0]
  when 'a'
    a = set_detail
  when 'b'
    b = set_detail
  when 'c'
    c = set_detail
  when 'A'
    A = set_detail
  when 'B'
    B = set_detail
  when 'C'
    C = set_detail
  end
end

# Put sides into an array
sides = [a, b, c]
# Test that we know at least two of the sides
sides_test_return = sides_test(sides)
test_with_sides = sides_test_return[0]
known_sides = sides_test_return[1]
# If result is true then find the angles
if test_with_sides == true
  sides = solve_for_sides(known_sides, a, b, c)
  a = sides[0]
  b = sides[1]
  c = sides[2]
else
  # Test angles
end

radian = 57.2957795
adjacent_to_B = a
opposite_of_A = a
adjacent_to_A = b
opposite_of_B = b
   hypotenuse = c

# c = Math.sqrt(a**2 + b ** 2)
A = Math.asin(a / c) * radian
B = Math.acos(a / c) * radian
puts "a = #{a}, b = #{b}, c = #{c}. A = #{A.round(2)}, B = #{B.round(2)}, C = #{C}"

puts sides_test_return
