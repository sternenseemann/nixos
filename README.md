![nixos](https://socialify.git.ci/pinpox/nixos/image?description=1&font=Source%20Code%20Pro&forks=1&issues=1&logo=https%3A%2F%2Fpablo.tools%2Fnixoscolorful.svg&owner=1&pattern=Circuit%20Board&pulls=1&stargazers=1&theme=Light)

This repository includes all configurations for my NixOS machines. Feel free to
use parts of it as you please, but keep it mind it is intended mostly for
personal use. I've written posts about certain aspects of this setup on my
[personal blog](https://pablo.tools/blog).

# Initial Setup

The structure of this repository is meant to allow easy manual deployment.
Individual hosts are defined in `/machines/<hostname>` and will import re-usable
parts of the configuration as needed.

Deployment is managed with [krops](https://tech.ingolf-wagner.de/nixos/krops/).
Secrets are stored in [pass](https://www.passwordstore.org/).

**TL;DR** To use a host configuration on a fresh install, make sure that:

- The hostname is set correctly (`hostname <machine name>`)
- You are connected to the internet and have access rights to the repository
- Pass has the necessary secrets for the machine
- The machine's config is up-to-date

Then backup the generated `hardware-configuration.nix` file:

```bash
# Overwrite hardware-configuration.nix file with the generated one
cp /etc/nixos/hardware-configuration.nix \
   ./machines/$(hostname)/hardware-configuration.nix

# Commit and push the new file
git commit -am"Add hardware-configuration for $(hostname)" && git push
```

Finally, use `krops` to deploy the machine's configuration from a host that has
the secrets in it's store.

```bash
nix-build ./krop.nix -A <machine name> && ./result
```

# Current Hosts

| Configuration                       | Type      | Location    | VPN IP         | Description                  |
| ----------------------------------- | --------- | ----------- | -------------- | ---------------------------- |
| [kartoffel](./machines/kartoffel)   | Desktop   | local       | `192.168.7.3`  | Desktop                      |
| [ahorn](./machines/ahorn)           | Desktop   | local       | `192.168.7.2`  | Notebook                     |
| [birne](./machines/birne)           | Server    | local       | `192.168.7.4`  | Local NAS                    |
| [porree](./machines/porree)         | Server    | netcup.de   | `192.168.7.1`  | Server for pablo.tools       |
| [mega](./machines/mega)             | Server    | netcup.de   | `192.168.7.6`  | Server for megaclan3000.de   |
| [kfbox](./machines/kfbox)           | Server    | netcup.de   | `192.168.7.5`  | Server for 0cx.de            |

The services running on each host are documented in the host-specific
`README.md` files.

# Deployment

## Default Deployment

Deployment is handled with [krops](https://tech.ingolf-wagner.de/nixos/krops/).
Every machine's deployment is defined in `krops.nix`. Additionally, there are
groups to deploy to multiple hosts at once.

To deploy to a single machine (e.g. `porree`):

```bash
nix-build ./krops.nix -A porree --show-trace && ./result
```

To deploy to a group (e.g. `servers`):

```bash
nix-build ./krops.nix -A all --show-trace && ./result
```

Ensure that the targets (`user@host` in krops.nix) are correct.


## First Deployment

If the system has not been configured to use flakes (e.g. fresh install), the
first deployment will have to be build on a machine that has. This can be done
from any of the other hosts that have the repository. The configuration will the
have the necessary options set, so that flakes works from now on with the normal
krops deployment.

```bash
# bash, zsh doesn't always work correctly
sudo nixos-rebuild --flake .#new-hostname --target-host new-host-ip> --build-host localhost switch
 ```

# Unmanaged Resources

The following resources are not managed or included in this repository and will
have to be put in place manually.

## Home-manager configuration (see [#8](https://github.com/pinpox/nixos/issues/8) )

User-specific configuration is installed by home-manager where needed. Setup for
the `pinpox` user is hosted in a [separate
repository](https://github.com/pinpox/nixos-home) so it can be used
independently.

# Contributing?

While contributions don't make much sense for a personal configuration repository,
I'm always happy to get hints, tips and constructive criticism. If you find something 
that could be done in a better way, please let me know!
