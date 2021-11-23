p "________________________________#1_"
print "print non va a capo"  #non a capo
puts "... puts invece si"  #a capo
p "p" #p
p 3+63
p 12/5
p 12.0 / 5  #divisione con decimali
p 2**3  #potenza
p 3^7

=begin
commenti lunghi
=end

p "ciao"

pippo = true  #pippo e Pippo sono 2 variabili diverse
Pippo = false #pippo e Pippo sono 2 variabili diverse

a, b, c, = 12, 123, 435 #a=12 b=123 c=435
b, a = c, b #b=435 a=123
p a, b, c

NAME = 'gab'
p "mi chiamo #{NAME = 'eddy'}"
NAME = 'max'
p NAME  # ti segnala con un warning che una variabile uppercase sta per essere sovrascritta

p "_________________________________Object methods_"
# # Object methods
p "hello world".length * 2 #sto invocando un metodo
p 10.next

p nil

p 5.to_s

nome1 = gets #attende l'input dell'operatore aggiungengo \n alla fine
nom2 =  gets.chomp #toglie "l'andare a capo"

# 35 Numbers
p 1.next()
p 1.+(2)  #in questo caso richiami il metodo + del numero e passi come parametro il dato che serve la metodo cioe' 2 (per esempio)

# 36 object methods with parameters
# parameters = dati passati in input (0 e 10) | arguments sono cio' che vuole in input (min e max)
p 20.between?(1,30)


# 38. Assignment Operators
a=4
p a += 6

#39. Introduction to Blocks with the .times Method
10.times { |i|
    puts "ciao iteration loop num:#{i}"
}

10.times do |i| #|block variables|
    puts "salve iteration loop num:#{i}"
end


#40. The .upto and .downto Methods
5.downto(1) { |i|
    puts i
}

#41. BONUS - The .step Method
5.step(50, 7) { |i| #parti da 5 conta fino a 50 aggiungendo 7
    p i
}

#43. Multiline Strings
words = <<MLS 
1
2
Ciao
MLS
p words #mi lasci \n
print words

#44. Escape Characters
nome = 'gianni'
puts "hello world \"nome\" ok"

#49...
story = "0123456789"
p story[1]
p story[-4]
p story[0,8] # oppure 
p story.slice(0,8)
p story[3..7] # includi il 7
p story[3...7] # escludi il 7

#55
word = "hello"
word.capitalize! #rapid function comand access
# come scrivere word = word.capitalize
p word

#56
word = "gabriele"
p "#{word} include \'b\'? #{word.include?('b')}"


#57
nome = "2345tgfdertgf"
p nome
p "nil: #{nome[13].nil?}"
p "empty: #{nome.empty?}"
p nome[12] #output: nil
# il nil è il fuori memoria allocata
# not in line

#58..60 Methods / funzioni - metodo DontRepeteYourself
# il method deve essere invoked
COOL = true
def presentazione(me)
	eta = 27
	#COOL = false - error dynamic constant assignment not enable
	p "piacere #{me} e ho #{eta} anni e sono cool? #{COOL}"
end
presentazione("gabriele")
presentazione "gabriele"

def presentazionePro(me, age)
	p "piacere #{me.capitalize} e ho #{age+2} anni e sono cool? #{COOL}"
end
presentazionePro("gabriele", 32)
presentazionePro "gabriele", 33

#61 - return 
def summa(num1, num2)
	p "somma in corso.."
	p  num1+num2
	return #num1+num2
	p "fanculo"
end
summa(3,5)

#63 if statement
if ("pippo"=="pluto") && true
	p "è true"
elsif ("pippo"=="pippo") || false
    p "è false"
else
    p "è boh"
end

# 69 Parentheses and Precedence
def authenticate (rank, name, bypass)
    if (rank == "007" && name == "James Bond") || bypass == "inc48v6nvg5" #(true and true) or true
        p " CORRECT - Agent #{name.upcase}:#{rank}, psw: #{bypass}"
    else
        p "Access denay for #{name}:#{rank}, PSW: #{bypass} not correct!!"
    end
end

authenticate("007", "James Bond", "43g6")
authenticate("031", "Janny Bold", "4fvv5")

#70 nested?? if a cascata
# esiste un switch?

#71 .respond_to?
num = 100
p num.respond_to?("length") #controlla se un obj ha un metodo

#72. Ternary Operator
p 1 > 3 ? "si cazzo" : "no cazzo"


#default attribute
def call_me(number, cap = 12345, area = "+39")
    puts "calling #{cap}:#{area}-#{number}"
end

call_me(333000000)
call_me("333gabriele") #non è stata specificato il tipo di input richiesto

# 74. Call A Method from Another Method or Interpolated String
def buonag()
    p "buona giornata"
end

def saluto(nome, sub=0)
    p "Ciao #{nome}, #{buonag()}"
end

saluto("mimmo")

# 75 The case Statement
def rate(vote)
    case vote
        when 1..5 #range valori interi
            "non sufficiente"
        when 4 # appena trova un when che soddisfa il vote esce senza completare le altre 
        "doppio case 4" #noon eseguirà mai questa network
        when 6 then "sufficiente"  # then 
        when 7, 8, 9  #range valori con virgola va bene anche con "pippo", "pluto", "paperino"
            "Buono/Dist."
        when 10
            "Ottimo"
        when "NCS" then "non ci siamo" #case "string"
        else "non è un voto"
        end
end
p rate(6)
p rate(4)
p rate("NCS")

#76 negative with !
p !123 #ogni numero return true, 0 return false

#77 unless .include
psw = "fioredicampo"
if !psw.include?("18Z!")
    p "psw non sicura"
end

#78 while
i = 1
while i <= 10 #finche e' true
    p "true #{i}"
    i+=1
end

#79 until
j = 1
until j > 10 #finche e' false
    p "false #{j}"
    j+=1
end

#80 TEST fizzbuzz.rb
def fizzbuzz(n)
    print n%3==0 ?  "Fizz" : nil
    print n%5==0 ? "Buzz" : nil
end
fizzbuzz(30)
p nil

#81 statement mod / inline mod
puts "true" if true
puts "fasle" if false

#83..86 Range
nums = 1...10 #escluso il 10
nums2 = 1..10 #incluso il 10
p nums.first(3) #stampa i primi 3
p "size #{nums.size}"
nums === 4 #contiene il 4?
p alph = "a".."z"
p alph.first(12) #stampa le prime 12

#random
puts "rand.round(12) = #{rand.round(12)}"
puts "rand(32...243) = #{rand(32...243)}"

##88.. array
xArray = ["pippo", 234, true, "gigi"]
puts xArray
puts "xArray[3] #{xArray[3]}"
puts "xArray[-1] #{xArray[-1]}"
puts "xArray.length #{xArray.length}"
puts "xArray.values_at(3) #{xArray.values_at(3)}"

xxArray = [["tom", "gatto", 1993],
           ["jerry", "topo", 1992],
           ["abby", 432]]
puts xxArray
# %w shortcut
names = %w[Aldo Giovanni Giacomo]
puts names
#create an array
puts Array.new(5, "asd")
puts []
#97 slice
num = [0, 34, 45, 56, 567, 678, 345, 34, 12]
p num[4..6]

#98 overwrite
nums98 = (1..10).to_a
p "nums98[3]: #{nums98[3]}"
nums98[3] = 234
p "nums98[3]: #{nums98[3]}"
nums98[6..7] = ["empty", "empty", "empty"]
nums98[0..2] = "empty"
p "nums98[3]: #{nums98[3]}"
p nums98

#range on an array
letters2 = ('a'..'z').to_a #to array
puts letters2[letters2.length-12] #letters2 e' gia' un array

#100..105
nums100 = [1,2,3]
p nums100.empty? #empty?
nums100.push(123) #push
p nums100
nums100 << (345) << (567) #alternativa a push
p nums100
nums100.insert(3, 10000, 2000) #(posizione, elementi...)
p nums100
nums100.pop #pop
p nums100
numDel = nums100.pop
p numDel
p nums100
nums100.pop(3)
p nums100
nums100.shift(2) #shift
p nums100
nums100.unshift(23, 342, 3546, 334, 34) #unshift
p nums100

# 106 spaceship operator
p 5 <=> 5 #0
p 5 <=> 3 #1
p 5 <=> 10 #-1
p 5 <=> "" #nil
#confronta una coppia per volta
p [3,4,5] <=> [3,4,5] #0
p [1,2,3] <=> [1,2,2] #1
p [1,2,3] <=> [1,3,1] #-1
p [3,4,5] <=> [3,nil,5]

#is_a?()
p wasd = (1..12).is_a?(Range)

#110
3.times{ |i| p "ciao #{i}"}
4.times do |i|
    p i*i
end

#111 .each
["c1","c2","c3","c4"].each do |i|
    p i
end

(1..5).each { |i| p "il quadrato di #{i} e' #{i*i}"}

#113 each_within_each
column = (1..8)
row = ('a'..'h')
column.each { |c|
    row.each { |r|
        p "#{c}:#{r}"
    }
}
p "♟ CHESS ♟"

#114 FOR
for i in (1..5)
    p i
end

#115
(1..5).each_with_index do |element, index|
    p "index #{index}) elem #{element}"
end

#117 map (or collect)
arr117 = (1..10).to_a.map { |i| 
    i**2  #i^2
}
p arr117

#118 
prz118 = [1,2,3,7,8,9]
p prz118
i=0
while i < prz118.length
    if prz118[i] ==7
        p "find the 7"
        break
    else
        p prz118[i]
    end
    i += 1
end

#119
cibo119 = ["pizza","pasta","cacca","frutta"]

cibo119.each do |i|
    unless i != "cacca" #finche il cibo non e' cacca
       next
    else
        p "mi piace la #{i}"
    end
end

#122 sort
num = [12, 45,32,675,45,12,56,2]
p num.sort

#125 include
p "Hello".include?("H")

#126 index
color = ["red","blu","wht","blk"]
p color.index("red")

#127 128 select reject.. return array 
anmls = ["lion","cat","dog"]
sel = anmls.select { |i| i.include?("d") }
rej = anmls.reject { |i| i.include?("c") }
p sel, rej

#129 multidimensional array
usrs = [["ed", 12],["edd", 31],["eddy", 27]]
p usrs[2][1] #output 27

#130 partition (select+reject) return 2 array

#131 split
frase = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do"
p frase.split() #oppur frase.split("i")
puts frase
frase.split.each do |i|
    ilength = i.length
    if ilength<10
        c=0
    else
        c=1
    end
    print i.length
        while c < ilength #finche e' true
        print "_"
        c+=1
    end
end
p "end"

# 132
name = "gabry"
name.each_char { |i| p i }
p name.chars

#133 join
names = ["ed","edd","eddy"]
p names.join("-")

#134 count
frase = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do"
p frase.count('on') #tot o+n 
# c=0
# charSel = 't'
# frase.each_char { |i| c+=1 if charSel==i }
# p c

#135 index
frase = "Lorem ipsum dolor sit amet"
p frase.index('e', 5)
p frase.index('e', 3) #('lettera', parti dalla posizione)

#136 insert
frase = "Lorem ipsum dolor sit amet"
p frase.insert(5, 'eeeeh')
p frase.insert(-1, 'oooooow')

#137 squeeze le le lettere multiple
frase = "Loooorem    ipsssum dolo    r sit ameeet"
p frase.squeeze
p frase.squeeze(' ')

#138 clear
frase = "Lorem ipsum dolor sit amet"
p frase.clear #output ""

#139 delete
frase = "Lorem ipsum dolor sit amet"
p frase.delete('e') #output "Lorm ipsum dolor sit amt"

#140 obj pointers e obj copies
a = [1, 2, 3]
b = a
p a.object_id
a.push(4)
p b #con c.dup => output [1, 2, 3, 4]

c = [1, 2, 3]
d = c.dup
c.push(4)
p d #con c.dup => output [1, 2, 3]

# 140
# pippo.object_id = pippo2.object_id
pippo = [1, 2, 3]
pippo2 = pippo
pippo.push(4)
p pippo.object_id
p pippo2.object_id

# pippo.object_id != pippo2.object_id
pippo = [1, 2, 3]
pippo2 = pippo.dup
pippo.push(4)
p pippo.object_id
p pippo2.object_id

# 141 splat
def sum(*numbers) # Array
  tot = 0
  numbers.each { |number| tot += number }
  tot
end
p sum(1, 2, 3)

# 142 .any non ho capito
[14, 2, 3, 4].any? do |nmbrs|
  # p nmbrs==3 ? "3" : "altro"
  p nmbrs
end

# 143 find (o detect)
cars = %w[bmw ford fiat]
p cars.find { |car| car.length > 1 } # solo la prima oppure .detect

# 144 uniq - return array with no duplicate
nums = [1, 2, 3, 4, 7, 6, 7, 8, 2]
p nums.uniq

# 145 - compact - remove the nil
nums = [1, 2, 3, nil, 7, 6, 7, nil, 2]
p nums.compact

# 146 - inject (o reduce) -
ary = [10, 20, 30, 40].inject(0) do |tot, current| # tot resta in memoria, il current scorre i valori
  puts "prev: #{tot}"
  puts "current: #{current}"
  tot + current
end
p ary # return tot

# 147 -  flatten - from multidimensional array to single array
reg = [
  %w[ed edd eddy],
  %w[ad add addy],
  %w[od odd oddy]
]
p reg.flatten # output ["ed","edd","eddy", "ad","add","addy", "od","odd","oddy"]

# 148 - zip
names = %w[Joe Boe Moe]
reg = [true, true, false]
p names.zip(reg) # output  [["Joe", true],["Boe", true],["Moe", false]]
p names.zip(%w[A B]) # output  [["Joe", 'C'],["Boe", 'B'],["Moe", nil]]

# 149 - sample - extract 1 random element from an array sample(num random elements)

# 150 - multiply -
p 4 * 3
# p ["ruby","on"]*["ruby","on"] error

# 151 - union - unisce 2 array, togliendo i duplicati
p [1, 2, 5] | [5, 2, 1, 5, 4]

# 152 - remove - rimuove gli elementi presenti in un 2° array dal 1° array
p [1, 2, 5, 3] - [5, 2, 1, 5, 4] # output [3]

# 153 - return 1 array che contine solo elementi comuni tra 2 i array di partennza
p [1, 5, 3] & [1, 5, 4] # output [1,5]

# 154 HASH with { }
# coppia key-value
emptyHash = {}
p emptyHash.class

firstHash = {
  'papera' => 'paperino',
  'topo' => %w[topolino minnie]
}
p firstHash['papera']
p firstHash['topo']

# 156 symbol
p :name.class
p :name.methods
p :"my name" # generally avoid space.. use myNAme or my_name

person = {              # alternative form
  name: 'Gab',          # :name => "Gab",
  age: 27,              # :age => 27,
  handsome: true,       # :handsome => true,
  lang: %w[Ruby JS]     # :lang => ["Ruby", "JS"]
}

p person[:name] # access to an Hash { }

# 157 convert symbol / string
p :age.to_s.class # symbol to string
p 'age'.to_sym.class # string to symbol

# 158 fetch method - to return alternative value when a key doesn't existes
menu = { burger: 3.99, taco: 1.99, coca: 1.15 }
p menu[:burger]
p menu[:sushi] # output nil
p menu.fetch(:burger)
# p menu.fetch(:sushi) #output error01
p menu.fetch(:sushi, 'not found') # output "not found".. con [:asd] di default scrive "nil", cosi possiamo impostare un testo alternativo

# 159. Add a Value with Bracket or .store
menu = { burger: 3.99, taco: 1.99, coca: 1.15 }
menu[:sushi] = 8.98 # or menu.store(:salad, 1.43)
menu[:taco] = 1000.0
p menu

# 160 length empty
menu = { burger: 3.99, taco: 1.99, coca: 1.15 }
p menu.length
p menu.empty?

# 161 .each
menu = { burger: 'fat', taco: 'ok', coca: 'superfat' }
menu.each do |food, healty|
  p "#{food} is #{healty}"
end
menu.each do |info|
  p info # output.classe: array
end

# 162, 163 each_key each_value keys values
menu = { burger: 'fat', taco: 'ok', coca: 'superfat', pizza: "ok" }
menu.each_key { |food| puts food }
menu.each_value { |healty| puts ".. is #{healty}" }
p menu.keys
p menu.values
p menu.values.uniq

#164 new hash
fruits = Hash.new("not found") # "not found" default output
fruits.default = "new not found" #alternative form

#165 convert hash to array
fruits = {banane: "gialle"}
p fruits.to_a.class

#166 .sort .sort_by
p menu.sort #by the keys
menu.sort_by { |food, healthy| p "#{food} is #{healthy}" }.reverse

#167 .key? .value?
menu = { burger: 'fat', taco: 'ok', coca: 'superfat', pizza: "ok" }
p menu.key?(:coca) #output true.. exists
p menu.key?(:fruits) #output false
p menu.value?("cool") #output false
p menu.value?('ok') #output true
p menu.value?("ok") #output true

#168 Hashes as Method Arguments
def randomMathWTF(price, tax, tip)
    tta = price * tax
    tti = price * tip
    tot = tta + tti + price
end
p randomMathWTF(123,12,8)

def randomMathUSA(info)
    tta = info[:price] * info[:tax]
    tti = info[:price] * info[:tip]
    tot = tta + tti + info[:price]
end
p randomMathUSA({tip: 8, tax: 12, price:123})

#169 .delete Method
menu.delete(:coca)
p menu

#170 .select .reject
p menu.select { |food, healthy| healthy == 'ok'}
p menu.reject { |food, healthy| healthy == 'ok'}

#171 .merge - Combine Hashes
menu = { burger: 'fat', taco: 'ok', coca: 'superfat', pizza: "ok" }
menu2 = { pasta: 'ok', salad: 'nice', coca: 'fatty'}
p menu.merge(menu2) #il secondo Hash sostituisce il primo nel caso di key uguali, temporaneamente
p menu2.merge(menu)

#173.. BLOCK

#174 yield - action outside the method
puts "________________174_____________________"
def  pastCtrl
    puts "start"
    yield # pass control from method to the block
    puts "second time"
    yield # pass control from method to the block
    puts "the end"
end
pastCtrl { p "🍕🍕🍕🍕🍕🍕🍕 break" }

def whoIam
    descr = yield
    puts "I'm #{descr}"
end
whoIam { "Gabriele" }

#176 block_given?
puts "_____________176__________________________"
def ctrl
    puts "inside"
    yield if block_given? #check that method exists
    puts "back"
end
puts "1:"
ctrl { puts "inside the block" }
puts "2:"
ctrl

#177 Yielding with Arguments 
def speak
    p "start"
    yield "Gabriele"
    p "middle"
    yield "Mimmo"
    p "end"
end
speak { |name| p "mi chiamo #{name}" } #name became yield value

def nums(num1,num2,num3)
    p "insidie"
    yield(num1,num2,num3)
end

numsApp = nums(4, 6, 7) { |num1, num2, num3| num1*num2*num3 }
numsApp2 = nums(4, 6, 7) { |num1, num2, num3| num1*num2+num3 }
p numsApp 
p numsApp2
# output:
# "inside" perche elabora nums poi stampa
# "inside"
# 168
# 31

#175 Procs I
to_yen = Proc.new { |num| num * 129.43 }
to_dollars = Proc.new { |num| num * 1.13 }
money = [45.4, 65.4, 1000, 1.49]
puts "¥: #{money.map(&to_yen)}"
puts "$: #{money.map(&to_dollars)}"

cube = Proc.new { |i| i**3 }
b, c = [5,6,7,8], [1,2,3,4]
bCube, cCube = [b,c].map { |array| array.map(&cube) }
p bCube, cCube

d = [1,2,3,4]
p d.map!(&cube) #cambia l'array di partenza
p d

ages = [4,10,14]
oldh = Proc.new do |i|
    i > 10 #return implicito
end
p ages.select(&oldh) #output 14
p ages.reject(&oldh) #output 4,10

#179 Procs II
hi = Proc.new { puts "hi there"}
5.times(&hi)
hi.call

p ["1","2","3"].map { |m| m.to_i }
p ["1","2","3"].map(&:to_i)
p [4,5,6].map(&:to_s)
p [1,2,3,4,5].select(&:even?)

#181 Proc Parameters

#THE ULTIMATE GUIDE TO BLOCKS, PROCS & LAMBDAS
#https://medium.com/podiihq/ruby-blocks-procs-and-lambdas-bb6233f68843
#creiamo un Block
["ed","edd","eddy"].map { |m8| p m8.capitalize }
# questo block non viene chiamato
# creiamo un yield che richiama un block 

def block_method 
    puts "we are in the method" 
end
block_method { puts "The block is called" }
block_method
#output "we are in the method" "we are in the method" 
#non stampa "The block is called" perche non invochiamo nessun blocco
def block_yield_method #questo e' un metodo
    puts "we are in the method - start"
    yield #invochiamo il blocco 
    puts "we are in the method - stop"
end
block_yield_method { puts "The block is called" } #invochiamo puts "The block is called"
#block_yield_method #ERROR - si aspetta un blocco da invocare

[1,2,3].each {|x| puts x*2 }
#il metodo each richiama un blocco, quindi una funzione secondaria
#mentre il metodo each si esegue

#182 Lambdas - migliore alternativa
resto = lambda { |num| num+50 } # creo un Block
#2 ways to call the block from an instance
p [1,2,3,4,5].map(&resto)
p resto.call(5)

some_proc = proc { |name,age| "your name is #{name} and you have #{age}yo" }
p some_proc.call("Gab",27)
p some_proc.call("Gab")
p some_proc.call

some_lambda = lambda { |name,age| "your name is #{name} adn you have #{age}yo" }
p some_lambda.call("Gab",27)
#p some_lambda.call("Gab") #ERROR

def dietaLambda
    status = lambda { return "lambda: ci seii" }
    status.call
    p "lambda: end of this sh*t"
end
dietaLambda #output 'sh*t'
#LAMBDA p/print/puts + no need 'p call'

def dietaProc
    status = proc { return "proc: ci seii" }
    status.call
    p "proc: end of this sh*t"
end
p dietaProc #output 'only return'
# dietaProc #output '' dont work
#LAMBDA return + have to use 'p call'

#183 Lambda Efficiency Example
    #normal function    
        def convert_dollar(euro)
            euro * 1.13 if euro.is_a?(Numeric)
        end
        p "#{convert_dollar(100)} dollari"#€


to_dollars = lambda { |euro| euro*1.13 } #new Block
to_pesos = lambda { |euro| euro*27.5 } #new Block
to_yens = lambda { |euro| euro*116.78 } #new Block

def convert(euro, change) #new Method
#with 2 property: Value, BLock 
    change.call(euro) #if euro.is_a?(Numeric)
        #here we invoke the (generic) Block with euro as parameter
end

p convert(100, to_dollars) #call the method, specifying the Block we want to invoke
p convert(100, to_pesos) #call the method, specifying the Block we want to invoke
p convert(100, to_yens) #call the method, specifying the Block we want to invoke

#alternative way to cal a Block
p [100, 150, 1492].map(&to_dollars) #& to indicate that is a Block

#184..190 Time Object
today = Time.new
p today.class


p Time.new(2015, 11, 18, 23, 24, 12)
# formato: hhhh, MM, dd, hh, mm, ss

p today.to_a
p today.to_s

p today.hour

puts today.yday #giorno dell'anno
puts today.wday #giorno dell'anno

bday = Time.new(1994, 9, 4)
p bday.sunday?
p bday + 60 # +60 minuti

def trova_info_giornoAnno(numero)
    startingDate = Time.new(2000, 1, 1)
    while startingDate.yday != numero
        startingDate+=60*60*24
    end
    # potevo fare until startingDate.yday = number
    # che gira finche è false
    p "trovato.. il #{numero} è #{startingDate}"
end
trova_info_giornoAnno(121)

xmas = Time.new(2016, 12, 25)
last = Time.new(2016, 12, 31)
p xmas < bday # < viene prima
p xmas.between?(bday, last)

p today.ctime

strTime = today.strftime("%j.. pippi)))))%j")
p strTime #stringa pesonalizzata

#todo 191

# 192 input output file 
File.open("novel.txt").each do |line|
    puts line
end

File.open("myFirstFile.txt", "a") do |file| 
    # w per scrivere
    # r per leggere
    # a per append
    file.puts "creato con puts ruby"
    file.write "creato con .write ruby"
    file.print "ricreato con puts ruby"
end #rewritten file content

File.delete("pippo.txt") if File.exist?("myFirstFile.txt")
File.rename("myFirstFile.txt", "pippo.txt")

# 195 ARGV
ARGV.each do |arg|
    num = arg.to_i
    p "the quare of #{num} is #{num**2}"
end

#196 load page
puts "successo"
load "./end.rb" #output "output from end.rb file"