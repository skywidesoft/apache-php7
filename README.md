### skywidesoft/apache-php7

A docker image with Apache, PHP7 and some commonly used PHP extension_drivers

#### Build the image
    docker build -t skywidesoft/apache-php7 .

#### Push the image
    docker push skywidesoft/apache-php7

#### Sample command for run the image
    docker run -p 80:80 -d --name my-apache-php-app -v /home/core/share:/var/www/html skywidesoft/apache-php7
