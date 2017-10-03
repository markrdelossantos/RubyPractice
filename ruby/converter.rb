class Converter

	def test 
		(0...1000).each do |n|
			puts convert(n)
		end
	end

	def convert(arg)
		splitted = arg.to_s.split("")

		unless splitted.length <= 3
			raise 'Invalid argument yo, should be a 1 to 3 digit number...'
		end
		process_word(splitted)
	end

	def process_word(arg)
		word = ''
		if arg.length == 1
			word = get_ones(arg[0]);
		elsif arg.length == 2 
			if arg[0] == '0' && arg[1] == '0'
				word = ''
			elsif arg[0] == '0'
				word = get_ones(arg[1])
			elsif arg[0] == '1'
				word = get_tens("#{arg[0]}#{arg[1]}")
			elsif arg[1] == '0'
				word = get_multiples_of_ten(arg[0])
			else
				word = "#{get_multiples_of_ten(arg[0])} #{get_ones(arg[1])}"
			end
		else
			word = "#{get_ones(arg[0])} hundred"
			arg.shift
			word = word + " " + process_word(arg)
		end
		word
	end

	def get_ones(arg)
		case arg
			when '0'
				'zero'
			when '1'
				'one'
			when '2'
				'two'
			when '3'
				'three'
			when '4'
				'four'
			when '5'
				'five'
			when '6'
				'six'
			when '7'
				'seven'
			when '8'
				'eight'
			when '9'
				'nine'
			else
				raise 'Invalid input...'
		end
	end

	def get_tens(arg)
		case arg
			when '10'
				'ten'
			when '11'
				'eleven'
			when '12'
				'twelve'
			when '13'
				'thirteen'
			when '14'
				'fourteen'
			when '15'
				'fifteen'
			when '16'
				'sixteen'
			when '17'
				'seventeen'
			when '18'
				'eighteen'
			when '19'
				'nineteen'
			else
				raise 'Invalid input...'
		end
	end

	def get_multiples_of_ten(arg)
		case arg
			when '2' 
				'twenty'
			when '3'
				'thirty'
			when '4'
				'forty'
			when '5'
				'fifty'
			when '6'
				'sixty'
			when '7'
				'seventy'
			when '8'
				'eighty'
			when '9'
				'ninety'
			else
				raise 'Invalid input...'
		end
	end
end