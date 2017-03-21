class Lesson < ApplicationRecord
  belongs_to :section
  mount_uploader :video, VideoUploader

  include RankedModel #anywhere underneath that line of code we can specify how we want to rank
  ranks :row_order, with_same: :section_id

end
