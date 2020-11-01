# NixOS

![nixos](https://socialify.git.ci/pinpox/nixos/image?description=1&descriptionEditable=My%20NixOS%20Configurations&forks=1&issues=1&logo=data%3Aimage%2Fsvg%2Bxml%3Bbase64%2CPD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB2ZXJzaW9uPSIxLjEiIGlkPSJMYXllcl8xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDUxMiA1MTIiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDUxMiA1MTI7IiB4bWw6c3BhY2U9InByZXNlcnZlIj4KPHN0eWxlIHR5cGU9InRleHQvY3NzIj4KCS5zdDB7ZmlsbDp1cmwoI1NWR0lEXzFfKTt9Cgkuc3Qxe2ZpbGw6dXJsKCNTVkdJRF8yXyk7fQoJLnN0MntmaWxsOnVybCgjU1ZHSURfM18pO30KCS5zdDN7ZmlsbDp1cmwoI1NWR0lEXzRfKTt9Cgkuc3Q0e2ZpbGw6dXJsKCNTVkdJRF81Xyk7fQoJLnN0NXtmaWxsOnVybCgjU1ZHSURfNl8pO30KPC9zdHlsZT4KPGxpbmVhckdyYWRpZW50IGlkPSJTVkdJRF8xXyIgZ3JhZGllbnRVbml0cz0idXNlclNwYWNlT25Vc2UiIHgxPSIzMTUuNTkyNiIgeTE9IjU2LjM4NTYiIHgyPSIzODIuNjY3NSIgeTI9IjIwNy4wMzgzIj4KCTxzdG9wIG9mZnNldD0iMCIgc3R5bGU9InN0b3AtY29sb3I6IzUxQkNGRSIvPgoJPHN0b3Agb2Zmc2V0PSIxIiBzdHlsZT0ic3RvcC1jb2xvcjojNkM2OUZGIi8%2BCjwvbGluZWFyR3JhZGllbnQ%2BCjxwYXRoIGNsYXNzPSJzdDAiIGQ9Ik0zNTYuNTMsMjU2LjdjMC0xLjY4LTEyNS44LTIxOC4wNC0xMjUuOC0yMTguMDRoNTUuMzVsMzMuNTUsNTcuMDNsMzMuNTUtNTcuMDNoMjguNTFsMTMuNDIsMjMuNDhsLTQzLjYxLDg1LjU0ICBsMzMuNTUsNTguN0wzNTYuNTMsMjU2LjciLz4KPGxpbmVhckdyYWRpZW50IGlkPSJTVkdJRF8yXyIgZ3JhZGllbnRVbml0cz0idXNlclNwYWNlT25Vc2UiIHgxPSIxNDkuNTM0MyIgeTE9IjIxNC4zNzU4IiB4Mj0iMzcwLjk0NTgiIHkyPSIzMzQuMTQ1OCIgZ3JhZGllbnRUcmFuc2Zvcm09Im1hdHJpeCgtMC41MDM2IDAuODYzOSAtMC44NjM5IC0wLjUwMzYgNzY0LjU2ODQgMTU1LjQ1ODUpIj4KCTxzdG9wIG9mZnNldD0iMCIgc3R5bGU9InN0b3AtY29sb3I6I0U0QzRGRiIvPgoJPHN0b3Agb2Zmc2V0PSIxIiBzdHlsZT0ic3RvcC1jb2xvcjojN0E1RUVGIi8%2BCjwvbGluZWFyR3JhZGllbnQ%2BCjxwYXRoIGNsYXNzPSJzdDEiIGQ9Ik0zMDUuNjksMzQxLjc3YzEuNDYtMC44MywxMjYuOTUtMjE3LjM4LDEyNi45NS0yMTcuMzhsMjcuNDUsNDguMDZsLTMyLjg4LDU3LjQxbDY2LjE2LDAuODVsMTQuMTQsMjQuNzYgIGwtMTMuNzQsMjMuM2wtOTUuOTEsNC41NmwtMzQuMzQsNTguMjRMMzA1LjY5LDM0MS43N3oiLz4KPGxpbmVhckdyYWRpZW50IGlkPSJTVkdJRF8zXyIgZ3JhZGllbnRVbml0cz0idXNlclNwYWNlT25Vc2UiIHgxPSIyOTcuNDE1IiB5MT0iNDQuNTE4NiIgeDI9IjM4MC4xNDIyIiB5Mj0iMTg4LjIxOTgiIGdyYWRpZW50VHJhbnNmb3JtPSJtYXRyaXgoLTAuNDk4OSAwLjg2NjYgLTAuODY2NiAtMC40OTg5IDU4OS45MDExIDE3MC4wNDQ4KSI%2BCgk8c3RvcCBvZmZzZXQ9IjAiIHN0eWxlPSJzdG9wLWNvbG9yOiM1MUJDRkUiLz4KCTxzdG9wIG9mZnNldD0iMSIgc3R5bGU9InN0b3AtY29sb3I6IzZDNjlGRiIvPgo8L2xpbmVhckdyYWRpZW50Pgo8cGF0aCBjbGFzcz0ic3QyIiBkPSJNMjAyLjIsMzQwLjQxYzEuNDUsMC44NCwyNTEuNzMtMC4yMywyNTEuNzMtMC4yM2wtMjcuNjIsNDcuOTdsLTY2LjE2LDAuNjJsMzIuNjksNTcuNTJMMzc4LjYxLDQ3MWwtMjcuMDUtMC4wOSAgbC01Mi4zOC04MC40N2wtNjcuNjEtMC4yMkwyMDIuMiwzNDAuNDEiLz4KPGxpbmVhckdyYWRpZW50IGlkPSJTVkdJRF80XyIgZ3JhZGllbnRVbml0cz0idXNlclNwYWNlT25Vc2UiIHgxPSI4MS41NjMxIiB5MT0iMTI3Ljk5ODYiIHgyPSIzMDIuOTc0NiIgeTI9IjI0Ny43Njg2IiBncmFkaWVudFRyYW5zZm9ybT0ibWF0cml4KC0wLjQ5ODIgLTAuODY3IDAuODY3IC0wLjQ5ODIgMTI3Ljg5ODkgNjQzLjQ0NTQpIj4KCTxzdG9wIG9mZnNldD0iMCIgc3R5bGU9InN0b3AtY29sb3I6I0U0QzRGRiIvPgoJPHN0b3Agb2Zmc2V0PSIxIiBzdHlsZT0ic3RvcC1jb2xvcjojN0E1RUVGIi8%2BCjwvbGluZWFyR3JhZGllbnQ%2BCjxwYXRoIGNsYXNzPSJzdDMiIGQ9Ik0xNTMuOTMsMjU0LjcyYzAsMS42OCwxMjUuMjMsMjE4LjM3LDEyNS4yMywyMTguMzdsLTU1LjM1LTAuMTRsLTMzLjQtNTcuMTFsLTMzLjY5LDU2Ljk0bC0yOC41MS0wLjA3ICBsLTEzLjM2LTIzLjUybDQzLjgzLTg1LjQzbC0zMy4zOS01OC43OUwxNTMuOTMsMjU0LjcyeiIvPgo8bGluZWFyR3JhZGllbnQgaWQ9IlNWR0lEXzVfIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgeDE9IjI5Ni42NjMxIiB5MT0iMTY2LjEyNzgiIHgyPSIzNzkuMzkwMyIgeTI9IjMwOS44MjkiIGdyYWRpZW50VHJhbnNmb3JtPSJtYXRyaXgoLTAuNDg4IC0wLjg3MjkgMC44NzI5IC0wLjQ4OCA0OC45MTQzIDY0NS4xNzgxKSI%2BCgk8c3RvcCBvZmZzZXQ9IjAiIHN0eWxlPSJzdG9wLWNvbG9yOiM1MUJDRkUiLz4KCTxzdG9wIG9mZnNldD0iMSIgc3R5bGU9InN0b3AtY29sb3I6IzZDNjlGRiIvPgo8L2xpbmVhckdyYWRpZW50Pgo8cGF0aCBjbGFzcz0ic3Q0IiBkPSJNMjA4LjA5LDE2Ni4zYy0xLjQ2LDAuODItMTI4Ljk0LDIxNi4yLTEyOC45NCwyMTYuMmwtMjcuMDEtNDguMzFsMzMuNDEtNTcuMTFsLTY2LjE1LTEuNDVMNS40OSwyNTAuNzMgIGwxMy45NS0yMy4xN2w5NS45NC0zLjY3bDM0Ljg3LTU3LjkzTDIwOC4wOSwxNjYuMyIvPgo8bGluZWFyR3JhZGllbnQgaWQ9IlNWR0lEXzZfIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgeDE9IjYzLjU2NTQiIHkxPSI3OS4wMDI1IiB4Mj0iMjg0Ljk3NyIgeTI9IjE5OC43NzI1Ij4KCTxzdG9wIG9mZnNldD0iMCIgc3R5bGU9InN0b3AtY29sb3I6I0U0QzRGRiIvPgoJPHN0b3Agb2Zmc2V0PSIxIiBzdHlsZT0ic3RvcC1jb2xvcjojN0E1RUVGIi8%2BCjwvbGluZWFyR3JhZGllbnQ%2BCjxwYXRoIGNsYXNzPSJzdDUiIGQ9Ik0zMDYuMDcsMTY3LjI1Yy0xLjQ1LTAuODQtMjUxLjczLTAuMjEtMjUxLjczLTAuMjFsMjcuNy00Ny45Mmw2Ni4xNi0wLjVsLTMyLjU4LTU3LjU4bDE0LjI3LTI0LjY5bDI3LjA0LDAuMTMgIGw1Mi4yMyw4MC41Nmw2Ny42MSwwLjM0TDMwNi4wNywxNjcuMjV6Ii8%2BCjwvc3ZnPg%3D%3D&owner=1&pulls=1&stargazers=1&theme=Light)

This repository includes all configurations for my NixOS machines. Feel free to
use parts of it as you please, but keep it mind it is intended mostly for
personal use.

# Setup host after NixOS installation

The structure of this repository is meant to allow easy manual deployment.
Individual hosts are defined in `/machines/<hostname>` and will import
re-usable parts of the configuration as needed. 

**TL;DR** To use a host configuration on a fresh install, do as root:
```
# If the root user has no key yet, generate one
ssh-keygen

# Add key as deployment key to the GitHub repostory
# https://github.com/pinpox/nixos/settings/keys

# Clone repository to /var/nixos-configs
git clone git@github.com:pinpox/nixos.git /var/nixos-configs

# Link desired host configuration to /etc/nixos
ln -s /var/nixos-configs/machines/kartoffel /etc/nixos
```
# Machines and Services



## porree (netcup.de)
- VPN server (wireguard)
- hugo-website
- lislon-website
- bitwarden_rs
- gitea
- netdata

## birne (local)
- backup-server
- seafile
- netdata

## kfbox (netcup.de)

## megaclan3000.de




# External

## Secrets in `/secrets`
```
 secrets-example
├──  kartoffel
│  ├──  borg
│  ├──  ssh
│  │  ├──  key-backup-private
│  │  ├──  key-backup-public
│  │  ├──  key-root-private
│  │  └──  key-root-public
│  └──  wireguard
│     ├──  private
│     └──  public
└──  porree
   ├──  borg
   ├──  ssh
   │  ├──  key-backup-private
   │  ├──  key-backup-public
   │  ├──  key-root-private
   │  └──  key-root-public
   └──  wireguard
      ├──  private
      └──  public
```
