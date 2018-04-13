class Person
	attr_reader :name
	attr_accessor :bank_account, :happiness, :hygiene

	def initialize(name)
		@name = name
		@bank_account = 25.0
		@happiness = 8
		@hygiene = 8
	end

	def happiness=(value)
		@happiness = value
		if @happiness > 10
			@happiness = 10
		elsif @happiness < 0
			@happiness = 0
		end
	end

	def hygiene=(value)
		@hygiene = value
		if @hygiene > 10
			@hygiene = 10
		elsif hygiene < 0
			@hygiene = 0
		end
	end

	def clean?
		@hygiene > 7
	end

	def happy?
		@happiness > 7
	end

	def get_paid(salary)
		@bank_account += salary
		return "all about the benjamins"
	end

	def take_bath
		self.hygiene += 4
		return "♪ Rub-a-dub just relaxing in the tub ♫"
	end

	def work_out
		self.happiness += 2
		self.hygiene -= 3
		return "♪ another one bites the dust ♫"
	end

	def call_friend(friend)
		self.happiness += 3
		friend.happiness += 3
		return "Hi #{friend.name}! It's #{@name}. How are you?"
	end

	def start_conversation(person, topic)
		case topic
		when "politics"
			self.happiness -= 2
			person.happiness -= 2
			return "blah blah partisan blah lobbyist"
		when "weather"
			self.happiness += 1
			person.happiness += 1
			return "blah blah sun blah rain"
		else
			return "blah blah blah blah blah"
		end
	end

	# def change_value(_attr, value)
	# 	_attr += value
	# 	if _attr > 10
	# 		_attr = 10
	# 	elsif _attr < 0
	# 		_attr = 0
	# 	end
	# end

end