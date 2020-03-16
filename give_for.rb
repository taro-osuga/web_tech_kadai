# データを受け取り、返却するCGIプログラムの起動
require 'cgi'
cgi = CGI.new
# データを受け取った後、HTMLの形式でレスポンスを返す
cgi.out("type" => "text/html", "charset" => "UTF-8") {
  get = cgi['give_for']
  # HTMLでレスポンスを返却する
  "<html>
    <body>
      <p>譲渡先が自家消費ではないもののゴーヤの情報はこちらです</p>
      文字列：#{get}
    </body>
  </html>"
}