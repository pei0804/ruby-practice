=begin
インスタンスの作成/初期化
class クラス名
  def initialize
    # 処理
  end
end

インスタンス = クラス名.new
=end

class MyClass
  def initialize
    puts 'Init'
  end
end

myClass = MyClass.new
puts myClass

=begin
定義の仕方
class クラス名
  def methodA
    # 処理
  end
  def methodB
    methodA
    インスタンスメソッド内のレシーバは
    selfのため同じインスタンスのメソッドを呼ぶ時は省略できる
  end
end

インスタンス = クラス名.new
インスタンス.メソッド
=end

class MyClass2
  def methodA
    puts 'methodA'
  end
  def methodB
    self.methodA
  end
end

myClass2 = MyClass2.new
myClass2.methodA
myClass2.methodB

=begin
インスタンスメソッド名の慣習
~?: 真偽値を返すメソッドにつけられることが多い
~!: 破壊的なメソッドや処理した際に偽を返す、例外を発生させるメソッドがある場合は例外を発生させる方につけることが多い
=end

class MyClass3
  def initialize
    @instanceVar = 0
    puts "#{@instanceVar} at init"
  end

  def methodA(num)
    @instanceVar +=num
    puts "#{@instanceVar} at init"
  end
end

myClass3 = MyClass3.new
myClass3.methodA(2)

# クラスメソッド

class MyClass4
  # self.をつける
  def self.classMethodA
    puts "self.classMethodA"
  end
  # 特異クラス定義 と呼ばれるやり方
  # self.とつけなくても書けるようになる
  class << self
    def classMethodB
      puts "classMethodB"
    end
    def classMethodC
      puts "classMethodC"
    end
  end
end

MyClass4.classMethodA()
MyClass4.classMethodB()
MyClass4.classMethodC()

# モジュールの場合はextendでもおｋ
module MyClass5 extend self
    def classMethodA
      puts "classMethodA"
    end
end

=begin
継承
class クラス名 < 継承したいクラス名

end
=end

class Car
  def accele
    p "アクセスを踏みました"
  end
  def break
    p "ブレーキを踏みました"
  end
end

class Soarer < Car
  def openRoof
    p "ルーフを開けました"
  end
  # メソッドオーバーライドは同じメソッド名で処理を書けばおｋ
  def break
    p "ブレーキを踏みませんでした"
  end
end

soarer = Soarer.new
soarer.openRoof
soarer.break

