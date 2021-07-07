

# Generating an ssh key for access to GitHub:

Start by generating a key:

    ssh-keygen -t ed25519 -C "your_email@example.com"

Save the file to its default location and protect it with a password. Then:

    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/id_ed25519

To add this key to your ssh configuration.

Next, we go to GitHub to add this key to your account, proceed to https://github.com/settings/keys.
We copy the contents of the public key: `less ~/.ssh/id_ed25519.pub` into a new ssh key entry, name it so we remember it.
