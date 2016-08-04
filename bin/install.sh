composer self-update
cd src
git clone https://github.com/llaull/AppBundleX.git
mv  -v AppBundleX/* AppBundle/
cd ../
mysql -e 'create database alpha;'
composer install
php bin/console doctrine:schema:create
php bin/console fos:user:create test test test --super-admin
