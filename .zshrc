#=============================================================#
export LANG=ja_JP.UTF-8
#=============================================================#

#=============================================================#
alias ll='ls -lhG'
alias lla='ls -lhaG'
alias llfrat='ls -lhFratG'
alias zshrc='vim ~/.zshrc'
alias vimrc='vim ~/.vimrc'
alias tmuxconf='vim ~/.tmux.conf'
alias klabmemo='vim ~/Documents/klab.txt'
alias memo='vim ~/Documents/memo.txt'
alias screenrc='vim ~/.screenrc'
alias reload='source ~/.zshrc ~/.screenrc ~/.vimrc'
#alias ctags='ctags -R --regex-php="/^[ \t]*const[ \t]+([a-z0-9_]+)/\1/d/i"'
alias tmux='tmuxx'
alias tm='tmuxx'
alias tma='tmux attach'
alias tml='tmux list-window'
#=============================================================#

#=============================================================#
PATH="/Users/ytakasuk/bin:/usr/local/bin/:$PATH"
#=============================================================#

#=============================================================#
#0:black、1:red、2:green、3:yellow、4:blue、5:magenta、6:cyan、7:white
autoload -Uz colors
colors
PROMPT=%F{2}%n@%m%f%F{5}::%f
#RPROMPT=%B%F{1}[%~]%f%b%D
RPROMPT=%B%F{1}[%~]
#=============================================================#

#=============================================================#
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
setopt hist_ignore_dups
setopt append_history       # 複数の zsh を同時に使う時など history ファイルに上書きせず追加する
setopt extended_history     # zsh の開始・終了時刻をヒストリファイルに書き込む
setopt hist_ignore_dups     # 直前と同じコマンドラインはヒストリに追加しない
setopt share_history        # シェルのプロセスごとに履歴を共有
setopt hist_no_store        # history (fc -l) コマンドをヒストリリストから取り除く
setopt hist_verify          # ヒストリを呼び出してから実行する間に一旦編集できる状態になる
#=============================================================#

#=============================================================#
setopt auto_cd              # ディレクトリ名の入力だけでそのディレクトリに移動できる
setopt auto_pushd           # 移動元のディレクトリを自動的にディレクトリスタックに記憶する
#=============================================================#

#=============================================================#
autoload -U compinit
compinit
#=============================================================#
