distro_variant="MATE" #Ubuntu variant to install. "server" (Ubuntu server; cli only.) "desktop" (Default Ubuntu desktop install). "kubuntu" (KDE plasma desktop variant). "xubuntu" (Xfce desktop variant). "budgie" (Budgie desktop variant). "MATE" (MATE desktop variant).
user="foouser" #Username for new install.
PASSWORD="xxxxxxxx" #Password for user in new install.
hostname="laptop3" #Name to identify the main system on the network. An underscore is DNS non-compliant.
zfs_root_password="${PASSWORD}" #Password for root pool. Minimum 8 characters. "" for no password protection. Unlocking root pool also unlocks data pool, unless the root pool has no password protection, then a separate data pool password can be set below.
locale="en_US.UTF-8" #New install language setting.
timezone="America/New_York" #New install timezone setting.

RPOOL_size="+800G"
zfs_rpool_ashift="13" #Drive setting for zfs pool. ashift=9 means 512B sectors (used by all ancient drives), ashift=12 means 4KiB sectors (used by most modern hard drives), and ashift=13 means 8KiB sectors (used by some modern SSDs).
EFI_boot_size="2048" #EFI boot loader partition size in mebibytes (MiB).
swap_size="2048" #Swap partition size in mebibytes (MiB). Size of swap will be larger than defined here with Raidz topologies.
zfs_dpool_ashift="13" #See notes for rpool ashift. If ashift is set too low, a significant read/write penalty is incurred. Virtually no penalty if set higher.
zfs_compression="lz4" #"lz4" is the zfs default; "zstd" may offer better compression at a cost of higher cpu usage

timeout_rEFInd="10" #Timeout in seconds for rEFInd boot screen until default choice selected.
quiet_boot="no" #Set to "no" to show boot sequence.
