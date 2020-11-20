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
    Appointment.all.select do |appointment| appointment.patient == self
    end
  end

  def doctors
    appointments.map do |appointment| appointment.doctor
    end
  end

end
