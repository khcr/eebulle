# encoding: utf-8

class MessagesUploader < CarrierWave::Uploader::Base

  storage :file

  def store_dir
    "#{Rails.root}/uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_whitelist
    %w(mp3 m4a)
  end

end
