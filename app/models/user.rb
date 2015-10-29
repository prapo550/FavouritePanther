class User < ActiveRecord::Base

  validates_presence_of :first_name, :message => "Please enter your first name"
  validates_presence_of :last_name, :message => "Please enter your last name"
  validates_presence_of :email, :message => "Please enter your email"
  validates_presence_of :mailing_address, :message => "Please enter your mailing address"
  validates_presence_of :phone_number, :message => "Please enter your phone number"
  validates_presence_of :zip_code, :message => "Please enter your zip code"

  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/



end
