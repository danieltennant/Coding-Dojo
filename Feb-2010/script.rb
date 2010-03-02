# February 2010 Coding Dojo Meeting
# Given an array of numbers, find the run of consecutive elements with the largest sum


def process_array (arr)
  curr_total = max_total = arr[0]
  curr_start_idx = max_start_idx = max_end_idx = 0

  arr.each_index do |x| 
    if curr_total + arr[x] >= arr[x]
      curr_total += arr[x]
    else
      curr_total = arr[x]
      curr_start_idx = x
    end
    if curr_total > max_total
      max_total = curr_total
      max_start_idx = curr_start_idx
      max_end_idx = x
    end
  end

  puts "start index: #{max_start_idx} end index: #{max_end_idx} sum: #{max_total}"  
end


# Some test arrays
arr1 = [31,  -41,   59,   26,  -53,   58,   97,   -93,   -29,   88]
arr2 = [-2, 1, 3, -2]
arr3 = [-2, -1, -5, -6, -2]

process_array(arr1)
process_array(arr2)
process_array(arr3)







