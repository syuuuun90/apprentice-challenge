
echo "
パスワードマネージャーへようこそ！
サービス名を入力してください：
ユーザー名を入力してください：
パスワードを入力してください："

read survice_name
read user_nema
read password

echo "
サービス名:$survice_name 
ユーザー名:$user_nema 
パスワード:$password" >> info.txt

echo "Thank you!"
