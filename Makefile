SHELL=/bin/sh
TMUX_CONF_PATH=$(PWD)/tmux.conf
DOT_TMUX_CONF_PATH=$(HOME)/.tmux.conf

all: install

clear-symlink:
	if [ -L $(DOT_TMUX_CONF_PATH) ]; then rm $(DOT_TMUX_CONF_PATH); fi;
	if [ -f $(DOT_TMUX_CONF_PATH) ]; then mv $(DOT_TMUX_CONF_PATH) $(DOT_TMUX_CONF_PATH).old; fi;

install: clear-symlink
	ln -s $(TMUX_CONF_PATH) $(DOT_TMUX_CONF_PATH)

