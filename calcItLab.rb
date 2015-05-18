def add(num1, num2) 
	num1 + num2
end

def subtract(num1, num2)
	num1 - num2
end

def multiply(num1, num2)
	num1 * num2
end

def division(num1,num2)
	num1 / num2
end

def power(num1, num2)
	num1**num2
end

def sqrt (num1)
	Math.sqrt(num1)
end


def get_nums()
	puts "First number?"
	num1 = gets.chomp.to_i

	puts "Second number?"
	num2 = gets.chomp.to_i
	return [num1, num2]
end


def calc_b(num1, num2)
	puts "which basic calulation do you want to perform?"
	cal_func_b = gets.chomp
	case cal_func_b
	when '+'
		puts add(num1, num2)
	when '-'
		puts subtract(num1, num2)
	when '*'
		puts multiply(num1, num2)
	when '/'
		puts division(num1, num2)
	end
end

def calc_a()
	puts "which advanced calulation do you want to perform? (p)ower or (s)qrt?"
	cal_func_a = gets.chomp
	case cal_func_a 
	when 'p'
		numbers = get_nums()
		puts power(numbers[0], numbers[1])
	when 's'
		puts "Please input number."
		num1 = gets.chomp.to_i
		puts sqrt(num1)
	end
end


def mort_calc()
	puts "Please input your principal."
	principal = gets.chomp.to_i

	puts "Please input your yearly interest rate."
	int_rate = Float(gets.chomp)

	puts "Please input your number of payments"
	num_payments = gets.chomp.to_i

	result = principal * (int_rate * (1 + int_rate)**num_payments) / ((1+int_rate)**num_payments - 1)

	puts "your monthly payment is #{result.round(2)}"
end


def bmi_calc()
	puts "Input your height in m or in."
	height = Float(gets.chomp)

	puts "Input your weight in kg or lb."
	weight = Float(gets.chomp)

	puts "was the inputs (i)perial or (m)etric?"
	measure = gets.chomp

	if measure == "i"
		bmi_i = (weight / height**2) * 703
		puts "your bmi is #{bmi_i.round(2)}"
	elsif measure == "m"
		bmi_m = weight / height**2
		puts "your bmi is #{bmi_m.round(2)}"
	end

end


def trip_calc()
	puts "Input your distance"
	d = Float(gets.chomp)

	puts "Input your mpg"
	mpg = Float(gets.chomp)

	puts "Input your cost per gallon"
	cpg = Float(gets.chomp)

	puts "Input your speed"
	s = Float(gets.chomp)

	if s < 60
		time = d / s
		price = d / mpg * cpg
		puts "Your trip will take #{time.round(1)} hours and cost $#{price.round(2)}"
	elsif s >= 60
		time = d / s
		if (mpg - (s - 60)*2) <= 0
			price = d / 1 * cpg
		else
			price = d / (mpg - (s - 60)*2) * cpg
		end
		puts "Your trip will take #{time.round(1)} hours and cost $#{price}"
	end

end


puts "Which calculator? (b)asic, (a)dvanced, (m)ortgage, bmi or (t)rip?"
calc = gets.chomp

if calc == 'b'
	numbers = get_nums()
	calc_b(numbers[0], numbers[1])
elsif calc == 'a'
	calc_a()
elsif calc == 'm'
	mort_calc()
elsif calc == 'bmi'
	bmi_calc()
elsif calc == 't'
	trip_calc
	
end





















