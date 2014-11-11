
#This is a dockerfile for generating ascii images from a URL or file
#The shell script converts any image type using imagemagick
#You can specify color and specific ascii character to use - check out jp2a argument set
# For png format use xxx
FROM ubuntu:14.04
MAINTAINER mtessel@docker.com

RUN apt-get update 
#getting jp2a & imagemagick (so we can do multiple formats - jpeg, png etc); curl is needed for imagemagick
RUN apt-get install -y jp2a imagemagick curl
ADD /image.sh /image.sh
ENTRYPOINT ["/image.sh"]
#I’m done!


