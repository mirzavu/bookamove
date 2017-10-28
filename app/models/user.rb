class User < ActiveRecord::Base
  attr_accessor :password
  before_save :encrypt_password
  after_commit :clear_cache

  has_one :client
  belongs_to :account
  has_one :driver, :class_name => 'Truck', :foreign_key => 'driver'

  has_many :role_users
  has_many :roles, through: :role_users

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_format_of :email, with: ->(user) { user.email.match(/\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/) ? /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/ : /([Nn]\/[Aa])+/ }
  #validates :email, presence: true, length: {maximum: 255}, format: {with: ->(user) { user.email.match(/\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/) ? /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/ : /([Nn]\/[Aa])+/ }}, uniqueness: {case_sensitive: false}
  validates_uniqueness_of :email, case_sensitive: false, scope: :account_id, unless: 'email.match(/([Nn]\/[Aa])+/)', :on => :create

  def group(user_role_level)
    if user_role_level > 50
      group = 'admin'
    elsif user_role_level > 10 and user_role_level < 50
      group = 'customer'
    else 
      group = 'mover'
    end
    group
  end



  def self.authenticate(email, password, account)
    user = find_by_email_and_account_id(email, account)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt) && !name.match(/([Nn]\/[Aa])+/)
      user
    else
      nil
    end
  end

  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end


  def self.get_information_email(id)
    user = find_by_id(id)
    user.email
  end

  def self.get_information_name(id)
    user = find_by_id(id)
    user.name
  end

  private
  def clear_cache
    Rails.cache.delete("user/#{self.id}")
    Rails.cache.delete("all_account_users/#{self.account_id}")
    Rails.cache.delete("user_action_role/#{self.id}")
    Rails.cache.delete("user_action_by_role/#{self.id}")
    Rails.cache.delete("all_user_actions/#{self.id}")
    Rails.cache.delete("all_action_by_user/#{self.id}")
  end

end
