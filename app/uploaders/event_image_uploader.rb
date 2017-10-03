class EventImageUploader < CarrierWave::Uploader::Base
   include CarrierWave::MiniMagick

   version :small do
     process resize_to_fit: [250, 250]
   end
  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end


end
