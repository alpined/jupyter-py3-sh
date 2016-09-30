FROM alpined/jupyter-base
# MAINTAINER AlpineD <alpined@x1g.com> | http://alpined.x1g.com

# ports exposed
EXPOSE 8080

# volumes
VOLUME ["/home/jupyter"]

# daemon owner
USER jupyter

# daemon workdir
WORKDIR /home/jupyter

# init - zombie reaping
ENTRYPOINT ["/bin/smell-baron"]

# launch command
CMD ["jupyter", "notebook", "--no-browser", "--ip=0.0.0.0", "--port=8080"]
