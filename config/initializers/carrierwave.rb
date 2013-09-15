CarrierWave.configure do |config|
  if Rails.env.development?
    config.storage = :file
  else
    config.storage = :fog
    config.fog_credentials = {
      :provider => 'AWS',
      :access_key_id => ENV['ACCESS_KEY'],
      :secret_access_key => ENV['SECRET_KEY']
    }
 
    config.fog_directory = ENV['AWS_BUCKET']
  end
end