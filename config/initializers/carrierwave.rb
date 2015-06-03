CarrierWave.configure do |config|
  config.root = Rails.root.join('tmp') # adding these...
  config.cache_dir = 'carrierwave' # ...two lines

  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'AKIAJRIDRSM4MD4P47HQ',                        # required
    :aws_secret_access_key  => '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',                     # required
    :region                 => 'us-west-2'                 # optional, defaults to 'us-east-1
  }
  config.fog_directory  = 'relocationstation'                             # required
  config.fog_public     = false                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end