
echo "パスワードマネージャーへようこそ！
サービス名を入力してください：
ユーザー名を入力してください：
パスワードを入力してください："

read service_name
read user_name
read password

echo "
サービス名:$service_name 
ユーザー名:$user_name 
パスワード:$password" >> info.txt

echo "Thank you!"
