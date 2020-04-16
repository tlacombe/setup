PR_ARROW_CHAR="➜"

function PR_ARROW() {
	echo "%(?:%{$fg_bold[green]%}${PR_ARROW_CHAR} :%{$fg_bold[red]%}${PR_ARROW_CHAR})%{$reset_color%}"
}

### Prompt function
function PCMD() {
	echo "%B%{$fg[red]%}%{$fg[cyan]%}%~%{$reset_color%} $(PR_ARROW) "
}

function PR_TIME() {
	echo "%D{%Hh%M}"
}

### Right prompt function
function RPCMD() {
	echo "$(git_prompt_info) $(PR_TIME)"
}

PROMPT='$(PCMD)'  # Single quote to prevent immediate execution (see Anish dotfiles)
RPROMPT='$(RPCMD)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%})%{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
