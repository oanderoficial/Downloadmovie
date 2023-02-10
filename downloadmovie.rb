require 'open-uri'

def download_video(url, filename)
  File.open(filename, "wb") do |file|
    file.write open(url).read
  end
end

url = "https://example.com/video.mp4"
filename = "video.mp4"

download_video(url, filename)

puts "Video baixado com sucesso como #{filename}"
