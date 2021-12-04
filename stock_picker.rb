def stock_picker(stocks)
  days_picked = []
  max_profit = 0

  for i in 0...stocks.length-1 do
    for j in i...stocks.length do
      profit = stocks[j] - stocks[i]
      if profit > max_profit
        max_profit = profit
        days_picked = [i, j] 
      end
    end
  end
  return days_picked
end


p stock_picker([17,3,6,9,15,8,6,1,10])
#=> [1, 4]