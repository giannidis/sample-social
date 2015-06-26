if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider               => 'AWS4-HMAC-SHA256',
      :aws_access_key_id      => ENV['S3_KEY'],
      :aws_secret_access_key  => ENV['S3_SECRET'],
      :endpoint               => "https://s3.amazonaws.com",
      :region                 => ENV['eu-central-1'] 
  }
  config.fog_directory  = ENV['S3_BUCKET']
  end
end