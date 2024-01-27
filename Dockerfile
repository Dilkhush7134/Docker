%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     Docker File     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


Docker files are basically scripts that you can write and then build into an image. The image can then be run to create the containers. It's like a shell script.
 
USER	-->		DOCKER File		-->		DOCKER Image	-->		DOCKER CONTAINER.

syntex: FROM	<base image>
				it is an information that informs docker about the base image that is to be used for container.
				This is always used as first instuction for any docker image but it can be used muliple time. 

syntex: ADD		<source> <destination>
				It is used to add new sources from your local directory or a URL to the file system of the image that will become the container in the designated location.

syntex: COPY	<source> <destination>
				It is used to add new sources from only your local directory to the file system of the image that will become the container in the designated location.

syntex: RUN		<command>
				This instruction is used to run specific command that you want run in the container during its creation.
				for ex: RUN apt-get update

syntex: WORKDIR	<directory>
				This instruction is responsible for setting the working directory so that 
				you can run shell command in that specific directory during the build time of the image.

syntex: CMD		<command>
				This instruction tells the container what command to run when it gets started.

syntex: VOLUME	<path>
				This instruction makes a mount point for the volume of a specified name.

syntex: EXPOSE	<ports>
				This instruction tells what port the container should be exposed at. But this can only happen for an internal network, the host will not be able to
				access the container from this port.

syntex: ENTRYPOINT	<commands> <parameter 1> <parameter 2>
				This instruction allow you to run commands when your container starts with parameters. Difference B/W CMD and ENTRYPOINT is that with CMD your command is not
				overwritten during run time. when you use ENTRYPOINT it will override any elements specified in another CMD instruction.

syntex: LABEL	<key>=<value>
				This instruction is used to add meta data to your image. you need to make use of quotes & backslashes if you want to include spaces. If there are any older
				labels they will be replaced with the new label value. you can make use of docker inspect command to see it's container.
				
				Since a new layer is created each time a new instruction is written, it is important to write in the most optimized way as possible and least number of 
				instruction as possible.

================================================================================

FROM docker
LABEL maintainer="dilkhush7134@gmai.com"
RUN apt update && apt install nginx -y 
WORKDIR /dpi/application/config/
COPY ./index.html .
CMD ["service","nginx","restart"]

EXPOSE 80


#sudo Docker build -t file_name .
