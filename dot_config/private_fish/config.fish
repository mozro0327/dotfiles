if status is-interactive
    # Commands to run in interactive sessions can go here
end

function proxy
  set -xg ALL_PROXY http://127.0.0.1:7890
end

function noproxy
  set -e ALL_PROXY
end

starship init fish | source

set -x VISUAL nvim
set -x EDITOR nvim

if test "$TERM" = "xterm-kitty"
    alias ssh="kitty +kitten ssh"
end

