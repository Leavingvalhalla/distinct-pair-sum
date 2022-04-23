def distinct_pair_sum(arr, k)
  ans = []
  i = 0
  (arr.length-1).times do
    if k == arr[i] + arr[i+1]
      new = [arr[i], arr[i+1]]
      if not ans.include?(new) || ans.include?(new.reverse)
        ans.push(new)
      end
      end
      i += 1
  end
  ans
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: [[1, 1], [2, 0]]"
  print "=> "
  print distinct_pair_sum([0, 1, 1, 2, 0, 1, 1], 2)

  puts

  puts "Expecting: [[2, 8]]"
  print "=> "  
  print distinct_pair_sum([3, 4, 2, 1, 5, 2, 8, 2], 10)

  # Don't forget to add your own!
end

# Please add your pseudocode to this file

# iterate through array
# check pairs of numbers and see if they add up to k
# if yes, check if answer array has pair or reverse
#   if it doesn't, push it to ans array



# And a written explanation of your solution