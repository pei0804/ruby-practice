=begin
def メソッド名(変数1, 変数2, ...,)
  実行する処理
  実行する処理

  return 式
end

変数 = メソッド名(引数1, 引数2, ...)
=end

def plus(num1, num2)
  return num1 + num2
end

puts plus(10, 25)

def comp(num1, num2)
  if num1 > num2 then
    return num1
  else
    return num2
  end
end

puts comp(10, 25)
