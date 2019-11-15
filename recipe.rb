execute "apt update" do
    command "apt update -y"
end

execute "apt upgrade" do
    command "apt upgrade"
end

package "mysql-server"
package "php7.2"
package "php7.2-zip"
package "php7.2-mbstring"
package "php7.2-dom"
package "php7.2-mysql"

execute "install composer" do
    command "php -r \"copy('https://getcomposer.org/installer', 'composer-setup.php');\" && php composer-setup.php --install-dir=/usr/local/bin --filename=composer"
end


