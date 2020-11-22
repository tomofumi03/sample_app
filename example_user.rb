class User
  attr_accessor :firstname, :lastname, :email

  def initialize(attributes = {})
    @firstname = attributes[:firstname]
    @lastname = attributes[:lastname]
    @email = attributes[:email]
  end

  def full_name
    "#{@firstname} #{@lastname}"
  end

  def alphabetical_name
    "#{self.firstname}" + ", " +"#{self.lastname}"
  end

  def formatted_email
    "C <#{@email}>"
  end
end
