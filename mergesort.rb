def merge_sort(arr)
  if arr.length < 2
    return arr
  else
    left = arr[0..(arr.length/2) - 1]
    right = arr[arr.length/2..-1]
    merge(merge_sort(left), merge_sort(right))
  end
end

def merge(arr1, arr2, merged = [])
  if arr1.length == 0 && arr2.length == 0
    return merged
  else
    if arr2.length == 0 ||
       arr1.length > 0 && arr2.length > 0 && arr1[0] < arr2[0]
      merged << arr1.shift
    else
      merged << arr2.shift
    end
    merge(arr1, arr2, merged)
  end
end