class Link < ActiveRecord::Base
	acts_as_votable
	Paperclip.options[:command_path] = 'C:/Program Files/ImageMagick-6.9.2-Q16'
	belongs_to :user
	has_many :comments

	has_attached_file :image, styles: { medium: "300x300#>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end
