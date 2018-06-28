# your code goes here
require 'pry'

class Person
	attr_reader :name, :happiness, :hygiene
	attr_accessor :bank_account

	def initialize(name)
		@name = name
		@bank_account = 25
		@happiness = 8
		@hygiene = 8
	end

	def happiness=(value)
		# binding.pry
		@happiness = value
		if @happiness > 10
			@happiness = 10
		elsif @happiness < 0
			@happiness = 0
		end
		@happiness
	end

	def hygiene=(value)
		@hygiene = value
		if @hygiene > 10
			@hygiene = 10
		elsif @hygiene < 0
			@hygiene = 0
		end
		@hygiene
	end

	def happy?
		return @happiness > 7
	end

	def clean?
		return @hygiene > 7
	end

	def get_paid(mulah)
		@bank_account += mulah
		return 'all about the benjamins'
	end

	def take_bath
		self.hygiene += 4
		return "♪ Rub-a-dub just relaxing in the tub ♫"
	end

	def work_out
		self.hygiene -= 3
		self.happiness += 2
		return "♪ another one bites the dust ♫"
	end

	def call_friend(person_instance)
		self.happiness += 3
		person_instance.happiness += 3
		return "Hi #{person_instance.name}! It's #{@name}. How are you?"
	end

	def start_conversation(someone, topic)
		if topic == "politics"
			self.happiness -= 2
			someone.happiness -= 2
			return 'blah blah partisan blah lobbyist'
		elsif topic == 'weather'
			someone.happiness += 1
			self.happiness += 1
			return 'blah blah sun blah rain'
		else 
			return 'blah blah blah blah blah'
		end
	end
end
