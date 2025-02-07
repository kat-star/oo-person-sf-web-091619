require 'pry'

class Person
  attr_reader :name
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @happiness = 8
    @hygiene = 8
    @bank_account = 25
  end

  def person
    @name 
  end   

  def happiness=(happiness_index)
    if happiness_index > 10 
      @happiness = 10
    elsif happiness_index < 0
      @happiness = 0
    else 
      @happiness = happiness_index
    end
  end

  def happiness
    @happiness
  end

  def hygiene=(hygiene_index)
    if hygiene_index > 10 
      @hygiene = 10
    elsif hygiene_index < 0
      @hygiene = 0
    else 
      @hygiene = hygiene_index
    end
  end

  def hygiene
    @hygiene
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    @bank_account = @bank_account + salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(peep) 
    self.happiness += 3
    peep.happiness += 3
    "Hi #{peep.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic === 'politics'
      self.happiness -= 2
      friend.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == 'weather'
      self.happiness += 1
      friend.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end


end

# stella = Person.new
# p stella.person
# p stella.get_paid(20)
