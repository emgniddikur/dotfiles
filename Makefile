ifndef VERBOSE
.SILENT:
endif

.PHONY: nvim
nvim:
	cp .config/nvim/init.vim ~/.config/nvim/init.vim

.PHONY: tmux
tmux:
	cp .tmux.conf ~/ && tmux source-file ~/.tmux.conf

.PHONY: link
link:
	sh ./.bin/link.sh
	cd ./dotfiles_private/ && make link
