
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int u_longlong_t ;
typedef int nvlist_t ;


 int DEV_PHYS_PATH ;
 int LOG_INFO ;
 int MAXPATHLEN ;
 int ZFS_EV_VDEV_GUID ;
 int g_zfshdl ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 int sprintf (char*,char*,int ) ;
 int strlcpy (char*,char*,int) ;
 int zed_log_msg (int ,char*,...) ;
 int zfs_append_partition (char*,int) ;
 int zfsdle_vdev_online ;
 int zpool_iter (int ,int ,char*) ;

__attribute__((used)) static int
zfs_deliver_dle(nvlist_t *nvl)
{
 char *devname, name[MAXPATHLEN];
 uint64_t guid;

 if (nvlist_lookup_uint64(nvl, ZFS_EV_VDEV_GUID, &guid) == 0) {
  sprintf(name, "%llu", (u_longlong_t)guid);
 } else if (nvlist_lookup_string(nvl, DEV_PHYS_PATH, &devname) == 0) {
  strlcpy(name, devname, MAXPATHLEN);
  zfs_append_partition(name, MAXPATHLEN);
 } else {
  zed_log_msg(LOG_INFO, "zfs_deliver_dle: no guid or physpath");
 }

 if (zpool_iter(g_zfshdl, zfsdle_vdev_online, name) != 1) {
  zed_log_msg(LOG_INFO, "zfs_deliver_dle: device '%s' not "
      "found", name);
  return (1);
 }

 return (0);
}
