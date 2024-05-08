# 画面表示と入力した選択肢をchoiceに代入する関数
password_manager(){
read -p "パスワードマネージャーへようこそ！
次の選択肢から入力してください(Add Password / Get Password / Exit)" choice

case $choice in
# Add Password の場合の指示 
"Add Password")
read -p "サービス名を入力してください：" service_name
read -p "ユーザー名を入力してください：" user_name
read -p "パスワードを入力してください：" password

echo "
サービス名:$service_name 
ユーザー名:$user_name 
パスワード:$password" >> info.txt

echo "パスワードの追加は成功しました！"
;;

"Get Password")
# Get Password の場合の指示
read -p "サービス名を入力してください：" service_choice

if grep -q $service_choice info.txt; then
# info.txtから「service_choice」を検索して、あるかをチェック

# ある場合
grep -A 2 $service_choice info.txt;

else
# ない場合
echo "そのサービスは登録されていません。"
fi
;;

"Exit")
# Exit の場合の指示
echo "ありがとうございました！"
;;

*)
# それ以外の指示
echo "入力を間違えています。"
password_manager 
;;
esac
}

password_manager
