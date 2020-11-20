class Patient
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def name
    @name
  end

  def appointments
    Appointment.all.collect do |appointment| appointment.patient == self
    end
  end

end
