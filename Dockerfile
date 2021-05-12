FROM ubuntu:latest
VOLUME /data
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install jq netcat tcpdump inetutils-tools inetutils-ping ldap-utils nmap curl wget dnsutils vim net-tools lsof openssh-client stress sysstat git telnet -y
RUN mkdir -p /root/.vim/autoload ~/.vim/bundle && curl -LSso /root/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
RUN git clone https://github.com/Valloric/MatchTagAlways.git /root/.vim/bundle/MatchTagAlways
RUN git clone https://github.com/ctrlpvim/ctrlp.vim.git /root/.vim/bundle/ctrlp.vim
RUN git clone https://github.com/nathanaelkane/vim-indent-guides /root/.vim/bundle/vim-indent-guides
ADD vimrc /root/.vimrc
RUN echo 'export EDITOR=$(which vim)'  >> ~/.bashrc

CMD ["sleep","infinity"]
