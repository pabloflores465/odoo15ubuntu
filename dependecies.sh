sudo apt update
sudo apt install -y git python3-pip build-essential wget python3-dev python3-venv \
    python3-wheel libfreetype6-dev libxml2-dev libzip-dev libldap2-dev libsasl2-dev \
    python3-setuptools node-less libjpeg-dev zlib1g-dev libpq-dev \
    libxslt1-dev libldap2-dev libtiff5-dev libjpeg8-dev libopenjp2-7-dev \
    liblcms2-dev libwebp-dev libharfbuzz-dev libfribidi-dev libxcb1-dev
sudo useradd -m -d /opt/odoo15 -U -r -s /bin/bash odoo15
sudo apt -y install postgresql
sudo su - postgres -c "createuser -s odoo15"
sudo wget https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.bionic_amd64.deb
sudo apt install -y ./wkhtmltox_0.12.5-1.bionic_amd64.deb
