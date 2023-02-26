sudo su - odoo15
git clone https://www.github.com/odoo/odoo --depth 1 --branch 15.0 /opt/odoo15/odoo
cd /opt/odoo15
python3 -m venv odoo-venv
source odoo-venv/bin/activate
pip3 install wheel
pip3 install -r odoo/requirements.txt
deactivate
mkdir /opt/odoo15/odoo-custom-addons
exit
sudo cp odoo15.conf /etc/
sudo cp odoo15.service /etc/systemd/
sudo systemctl daemon-reload
sudo systemctl enable --now odoo15

