FROM williamyeh/ansible:centos7-onbuild

ENV PLAYBOOK ansible/playbook.yml

RUN ansible-playbook-wrapper

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
