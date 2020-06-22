require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key = "fVesaIWchMTycTrUhUCChickL"
  config.consumer_secret = "fI5oVGbY61hS42CaOhky3xdnqnQvtv4MUrbziW8hw1M2gHxx3k"
  config.access_token = "1129714587274629120-tNfJoakcNXd0E4ipozqvL0IvCHOaqr"
  config.access_token_secret = "ZY96GUY0vR6hQUiLkh6Av34c6C63k7aqI3YpLILaNVUSb"
end

#打ったものをがツイートされる
#client.update(gets.chomp)

begin
#タイムライン取得
client.home_timeline.each do |tweet|
    puts tweet.user.name + " id:" + tweet.user.screen_name 
    puts tweet.text
end
end
  
#入力したワードを含んだワードを検索
=begin
word=gets.chomp
client.search(word).take(10).each do |tweet|
  puts tweet.text
end
=end

#タイムライン取得
=begin
timeline = client.user_timeline("air1p1", { count: 5 } )
timeline.each do |tweet|
  puts "--ツイート--"
  puts tweet.text
end
=end


#client.tweet.methodsでメソッドを調べる

#全文
#full_text