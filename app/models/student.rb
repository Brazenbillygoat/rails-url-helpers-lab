class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def active_message
    self.active == true ? "This student is currently active." : "This student is currently inactive."
  end

  def make_active_true
    self.toggle :active
    # (self.active == false) ? self.active = true : self.active = false
    self.save
  end
end