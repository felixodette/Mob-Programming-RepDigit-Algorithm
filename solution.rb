def is_repdigit(number)
  array = number.to_s.split('').map(&:to_i) # Create an array based on number and convert to integer
  digit = array.first # Take first digit and compare it with all numbers
  count = array.count { |item| item != digit } # Count how many digits in that number are different from first digit

  # If count variable is different from zero, we have a digit that is different from the first digit, which means the
  # number isn't a repeat digit.
  if count == 0
    true
  else
    false
  end
end

puts is_repdigit(763)