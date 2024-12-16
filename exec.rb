require 'fileutils'

EXTENSION = 'jpg'

def all_ren(start_name: 1)
  files = Dir.glob("input/*.#{EXTENSION}")

  files.each_with_index do |file, i|
    output = "output/#{format('%03d', i + start_name)}.#{EXTENSION}"
    FileUtils.mv(file,  output)
  end
end

args = {
  start_name: ARGV[0]&.to_i
}.compact

all_ren(**args)

