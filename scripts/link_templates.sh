#!/usr/bin/env bash 

VIMCFG_DIR="$HOME/vimcfg/templates"
VIM_TEMPLATES_DIR="$HOME/.vim/templates"

mkdir -p "$VIM_TEMPLATES_DIR"

echo "Deleting all links..."

for template in "$VIMCFG_DIR"/*; do
    filename=$(basename "$template")

    link_path="$VIM_TEMPLATES_DIR/$filename"

    if [ -L "$link_path" ]; then
        rm "$link_path"
    elif [ -e "$link_path" ]; then
        echo "Skip $link_path because it's not link file."
        continue
    fi

    ln -s "$template" "$link_path"
    echo "New link: $link_path -> $template"
done

echo "All template files now are linked."

