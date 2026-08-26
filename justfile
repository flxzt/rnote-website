# justfile for rnote-website

# either 'true' or 'false'
ci := "false"

[private]
sudo_cmd := if ci == "true" { "" } else { "sudo" }
[private]
linux_distr := `grep -o -E '^ID=([a-zA-Z0-9_\-]*)$' -r /etc/os-release | cut -d= -f2 | tr '[:upper:]' '[:lower:]'`

default:
    just --list

prerequisites:
    #!/usr/bin/env bash
    set -euxo pipefail
    git submodule update --init --recursive
    if [[ ('{{linux_distr}}' =~ 'fedora') ]]; then
        {{sudo_cmd}} dnf install -y openssl-devel
    elif [[ '{{linux_distr}}' =~ 'debian' || '{{linux_distr}}' =~ 'ubuntu' ]]; then
        {{sudo_cmd}} apt-get update
        {{sudo_cmd}} apt-get install -y libssl-dev
    else
        echo "Can't install system dependencies, unsupported distro."
        exit 1
    fi
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
    export PATH="$HOME/.cargo/bin:$PATH"
    cargo install --locked typst-cli
    cargo install --locked typstyle

check:
    typstyle --check ./*.typ

build:
    typst compile --features html,bundle --format bundle index.typ public

serve:
    typst watch --features html,bundle --format bundle index.typ public

# Build site and commit and push changes in public submodule.
update-push-public: build
    #!/usr/bin/env bash
    set -euxo pipefail
    cd public
    git stage .
    git commit -m "update site"
    git push
