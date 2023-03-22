if [[ $SHELL == *"zsh"* ]]; then
    echo "Deploying zsh mode"
    #cp -R ~/.dotfiles/.files ~/
    #cp ~/.dotfiles/.zshrc ~/.zshrc
    cp ~/.dotfiles/.alias ~/.alias
    #cp ~/.dotfiles/.zprofile ~/.zprofile
elif [[ $SHELL == *"bash"* ]]; then
    echo "Deploying bash mode"
    cp -R ~/.files ../
fi

echo "Deploying Brew List"
cat brew.list | xargs brew install
