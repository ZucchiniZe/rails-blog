class Post < ActiveRecord::Base
  has_many :comments

  validates_presence_of :content, :title

  def word_count
    self.content.split.size
  end

  def reading_time
     (word_count / 180.0).ceil
  end
end
