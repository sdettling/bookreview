class User < ActiveRecord::Base
  attr_accessible :age, :email, :first_name, :last_name

  def is_teen?(userid)
  	User.find(userid).age > 12 && < 20
  end

  def has_long_name?(userid)
  	User.find(userid).name.length > 10
  end

  def all_long_name
  	long_users = []
  	User.all {|u|
  		if u.has_long_name?
  			long_users.push(u)
  		end
  	}
  	long_users
  end

  has_many :books
  has_many :reviews, :through => :books

end
