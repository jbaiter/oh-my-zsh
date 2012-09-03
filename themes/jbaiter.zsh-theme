function collapse_pwd {
    basename "`pwd |sed -e "s,^$HOME,~,"`"
}

function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '±' && return
    echo '◆'
}

PROMPT='%{$fg[7]%}$(collapse_pwd)$(git_prompt_info) $(prompt_char) % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="*)"
ZSH_THEME_GIT_PROMPT_CLEAN=")"
