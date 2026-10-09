help([[

Description
===========
RFS - convenient command-line access to Oxford Research File Service.

This module provides the 'rfs' command, a small wrapper around smbclient.

More information
===============
- Support Documentation: https://kir-rescomp.github.io/kir-researchcomp-hub/data-transfer/rfs/

Common commands:
  rfs ls [REMOTE_DIR]
  rfs mkdir REMOTE_DIR
  rfs put LOCAL [REMOTE_DIR]
  rfs put -r LOCAL_DIR [REMOTE_DIR]
  rfs get REMOTE_FILE [LOCAL_DIR]
  rfs get -r REMOTE_DIR [LOCAL_DIR]
]])

whatis("Name: RFS")
whatis("Version: 1.0")
whatis("Description: Command-line access to Oxford RFS via smbclient")

local root = "/gpfs3/apps/kir/eb/skylake/software/RFS/1.0/bin"

setenv("RFS_SERVER", "connect.ox.ac.uk")
setenv("RFS_SHARE", "RFS")
setenv("RFS_DOMAIN", "AD-OAK")
setenv("RFS_CREDENTIALS",
       pathJoin(os.getenv("HOME") or "", ".rfs_credentials"))

prepend_path("PATH", pathJoin(root, "bin"))
