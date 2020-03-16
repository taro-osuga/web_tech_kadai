# データを受け取り、返却するCGIプログラムの起動
require 'cgi'
cgi = CGI.new
# データを受け取った後、HTMLの形式でレスポンスを返す
cgi.out("type" => "text/html", "charset" => "UTF-8") {
  get = cgi['quality']
  # HTMLでレスポンスを返却する
  "<html>
    <body>
      <p>品質が悪いゴーヤの情報はこちらです</p>
      文字列：#{get}
    </body>
  </html>"
}