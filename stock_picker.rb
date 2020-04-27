#from an array
#we need to pick all this days and 
#compare them to other days
#to get elected those days must have the biggest diference 
#and to lowest must come first than the highest day.

#get one day and compare it to everyone else from the index
#we keep the one with the biggest diference with that day
#then we check with the next day and if that day gets a higher difference 
#replace the former one.

prices = [17,3,6,9,15,8,6,1,10]

result = []

def stock_picker(arr)

difference = 0
sell_day=0
buy_day=0
result =[]
b = 1
a=0
iteration =0

  arr.each_with_index do |value, day|
   a=0
   b=0
   
   
   until a == arr.last
    iteration+=1
    a = arr[day+b]
    b+=1
    
    
      if a - value > difference
        difference = a-value
        buy_day = day
        sell_day = day+b-1
       
             
      end
    end
   
  end
  result.push(buy_day)
  result.push(sell_day)
  print result 
end

stock_picker(prices)