
def bubble_sort(arr)
  (arr.length - 1).times do
    for i in 0...arr.length - 1
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
      end
    end
  end
 arr
end


puts bubble_sort([4,3,78,2,0,2])



def bubble_sort_by(arr)
    (arr.length - 1).times do
      for i in 0...arr.length - 1
        if yield(arr[i], arr[i + 1]) > 0
          arr[i], arr[i + 1] = arr[i + 1], arr[i]
        end
      end
    end
   arr
end


puts bubble_sort_by(["hi","hello","hey"]) { |left,right| left.length - right.length }