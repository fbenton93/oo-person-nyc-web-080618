class Person

  @@all = []

  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(points)
    @happiness = points
    points_corrector
  end

  def hygiene=(points)
    @hygiene = points
    points_corrector
  end



  def points_corrector
    if self.happiness > 10
      self.happiness = 10
    elsif self.happiness < 0
      self.happiness = 0
    elsif self.hygiene > 10
      self.hygiene = 10
    elsif self.hygiene < 0
      self.hygiene = 0
    end
  end

  def clean?
    if self.hygiene > 7
      true
    else
      false
    end
  end

  def happy?
    if self.happiness > 7
      true
    else
      false
    end
  end

  def get_paid(salary_amt)
    self.bank_account += salary_amt
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    points_corrector
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    points_corrector
    "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    person.happiness += 3
    self.happiness += 3
    "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person,topic)
    if topic == "politics"
      person.happiness -= 2
      self.happiness -= 2
      points_corrector
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      person.happiness += 1
      self.happiness += 1
      points_corrector
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end

  end



end
