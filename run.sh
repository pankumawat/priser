#rm -rf ./node_modules/
npm install;
echo "Deploying changes.."
sudo kill -9 `pgrep node | head -1`
if [[ $1 == local ]]
  then npm run local
  else npm run start &
fi
