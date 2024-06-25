local yellow_color="%{$(echo '\e[38;2;255;190;11m')%}"
local orange_color="%{$(echo '\e[38;2;251;86;7m')%}"
local pink_color="%{$(echo '\e[38;2;255;0;110m')%}"
local purple_color="%{$(echo '\e[38;2;131;56;236m')%}"
local blue_color="%{$(echo '\e[38;2;58;134;255m')%}"

function virtualenv_prompt_info() {
  if [ -n "$VIRTUAL_ENV" ]; then
    echo " ${pink_color}[₍ᐢ𖦸˔𖦸ᐢ₎$(basename $VIRTUAL_ENV)] ${reset_color}"
  fi
}

# Must use Powerline font, for \uE0A0 to render.
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[magenta]%}\uE0A0 "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='
$(virtualenv_prompt_info)%{$yellow_color%}%~%{$orange_color%}$(git_prompt_info) ⚡%{$purple_color%} ฅᐢ..ᐢ₎♡%{$blue_color%} ->%{$reset_color%}
$ '

