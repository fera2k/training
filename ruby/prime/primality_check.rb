def prime?(num)
  # edge cases
  return true if [2, 3, 5].include?(num)
  return false if num <= 1
  return false if num > 2 && num.even?
  return false if num % 3 == 0

  # starter point in the pseudo prime sequence
  pseudo_prime = 5

  # start with 2 and then keeps switching between 4 and 2
  increment = 2

  loop do
    q, r = num.divmod pseudo_prime
    return true if q < pseudo_prime
    return false if r.zero?
    pseudo_prime += increment
    increment = increment == 2 ? 4 : 2
  end
end

test_subjects = [7, 11, 25, 27, 31, 33, 127, 1_000_000_007, 100_000_003, 1_000_003]
test_subjects.each do |n|
  puts "#{n} is prime? #{prime?(n)}"
end
