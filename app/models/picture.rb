class Picture < ActiveRecord::Base
  mount_uploader :img, PictureUploader
end
