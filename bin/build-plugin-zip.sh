#!/usr/bin/env bash

set -e # exit on error

cd "$(dirname "$0")"
cd ..

rm -rf woocommerce.zip woocommerce/
mkdir woocommerce/

cp -var \
	LICENSE \
	languages/ \
	lib/ \
	README.md \
	woocommerce.php \
	woocommerce/

zip -r woocommerce.zip woocommerce/

rm -rf woocommerce/

echo "Plugin built successfully: woocommerce.zip"
