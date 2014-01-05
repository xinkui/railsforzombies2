class User < ActiveRecord::Base
  before_save :pre_save
  has_many :posts

  scope :man, -> { where(male: "male") }
  scope :woman, -> { where(male: "female")}
  scope :children, -> { where("age < 10") }
  scope :recent, -> { order('created_at').limit(2) }

  validates :name, uniqueness: true

  def pre_save
    puts "pre save"
  end

end
