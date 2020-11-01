{ config, pkgs, lib, ...}: {
  # Backup with borgbackup to remote server. The connection key and repository
  # encryption passphrase is read from /secrets. This directory has to be
  # copied ther *manually* (so this config can be shared publicly)!
  services.borgbackup.jobs.home = {

    # Paths to backup, home should be enough for now, since system-wide
    # configuration is generated by nixOS
    paths = "/home";

    # Remote servers repository to use. Archives will be labeled with the
    # hostname and a timestamp
    repo =
      "ssh://borg@backup-server//mnt/backup/borgbackup/${config.networking.hostName}";

    # Don't create repo if it does not exist. Ensures the backup fails, if for
    # some reason the backup drive is not mounted or the path has changed.
    doInit = false;

    # Encryption and connection keys are read from /secrets
    encryption = {
      mode = "repokey";
      passCommand = "cat /secrets/borg/repo-passphrase";
    };
    environment.BORG_RSH = "ssh -i /secrets/ssh/backup-key";

    # Print more infomation to log and set intervals at which resumable
    # checkpoints are created
    extraCreateArgs = "--verbose --list --checkpoint-interval 600";

    # Exclude some directories from backup that contain garbage
    exclude = [
      "*.pyc"
      "*/cache2"
      "/*/.cache"
      "/*/.config/Signal"
      "/*/.config/chromium"
      "/*/.config/discord"
      "/*/.container-diff"
      "/*/.gvfs/"
      "/*/.local/share/Trash"
      "/*/.mozilla/firefox/*.default/Cache"
      "/*/.mozilla/firefox/*.default/OfflineCache"
      "/*/.npm/_cacache"
      "/*/.thumbnails"
      "/*/.ts3client"
      "/*/.vagrant.d"
      "/*/.vim"
      "/*/Cache"
      "/*/Downloads"
      "/*/VirtualBox VMs"
      "discord/Cache"
    ];

    compression = "lz4";

    # Backup will run daily
    startAt = "daily";
  };
}