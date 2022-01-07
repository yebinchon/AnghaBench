
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEXT_DOMAIN ;
 char const* dgettext (int ,char*) ;

const char *
libzfs_error_init(int error)
{
 switch (error) {
 case 128:
  return (dgettext(TEXT_DOMAIN, "The ZFS modules are not "
      "loaded.\nTry running '/sbin/modprobe zfs' as root "
      "to load them."));
 case 130:
  return (dgettext(TEXT_DOMAIN, "/dev/zfs and /proc/self/mounts "
      "are required.\nTry running 'udevadm trigger' and 'mount "
      "-t proc proc /proc' as root."));
 case 129:
  return (dgettext(TEXT_DOMAIN, "The ZFS modules cannot be "
      "auto-loaded.\nTry running '/sbin/modprobe zfs' as "
      "root to manually load them."));
 case 131:
  return (dgettext(TEXT_DOMAIN, "Permission denied the "
      "ZFS utilities must be run as root."));
 default:
  return (dgettext(TEXT_DOMAIN, "Failed to initialize the "
      "libzfs library."));
 }
}
