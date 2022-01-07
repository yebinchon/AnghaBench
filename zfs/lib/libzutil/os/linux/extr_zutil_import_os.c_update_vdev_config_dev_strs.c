
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* vds_devid; char* vds_devphys; } ;
typedef TYPE_1__ vdev_dev_strs_t ;
typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;
typedef int boolean_t ;


 int VDEV_TYPE_DISK ;
 int ZPOOL_CONFIG_DEVID ;
 int ZPOOL_CONFIG_PATH ;
 int ZPOOL_CONFIG_PHYS_PATH ;
 int ZPOOL_CONFIG_TYPE ;
 int ZPOOL_CONFIG_VDEV_ENC_SYSFS_PATH ;
 int ZPOOL_CONFIG_WHOLE_DISK ;
 scalar_t__ encode_device_strings (char*,TYPE_1__*,int ) ;
 int free (char*) ;
 char* getenv (char*) ;
 int nvlist_add_string (int *,int ,char*) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 int nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 int nvlist_remove_all (int *,int ) ;
 scalar_t__ strcmp (char*,int ) ;
 int strncasecmp (char*,char*,int) ;
 scalar_t__ strtoul (char*,int *,int ) ;
 char* zfs_get_enclosure_sysfs_path (char*) ;
 char* zfs_get_underlying_path (char*) ;

void
update_vdev_config_dev_strs(nvlist_t *nv)
{
 vdev_dev_strs_t vds;
 char *env, *type, *path;
 uint64_t wholedisk = 0;
 char *upath, *spath;
 env = getenv("ZFS_VDEV_DEVID_OPT_OUT");
 if (env && (strtoul(env, ((void*)0), 0) > 0 ||
     !strncasecmp(env, "YES", 3) || !strncasecmp(env, "ON", 2))) {
  (void) nvlist_remove_all(nv, ZPOOL_CONFIG_DEVID);
  (void) nvlist_remove_all(nv, ZPOOL_CONFIG_PHYS_PATH);
  return;
 }

 if (nvlist_lookup_string(nv, ZPOOL_CONFIG_TYPE, &type) != 0 ||
     strcmp(type, VDEV_TYPE_DISK) != 0) {
  return;
 }
 if (nvlist_lookup_string(nv, ZPOOL_CONFIG_PATH, &path) != 0)
  return;
 (void) nvlist_lookup_uint64(nv, ZPOOL_CONFIG_WHOLE_DISK, &wholedisk);




 if (encode_device_strings(path, &vds, (boolean_t)wholedisk) == 0) {
  (void) nvlist_add_string(nv, ZPOOL_CONFIG_DEVID, vds.vds_devid);
  if (vds.vds_devphys[0] != '\0') {
   (void) nvlist_add_string(nv, ZPOOL_CONFIG_PHYS_PATH,
       vds.vds_devphys);
  }


  upath = zfs_get_underlying_path(path);
  spath = zfs_get_enclosure_sysfs_path(upath);
  if (spath)
   nvlist_add_string(nv, ZPOOL_CONFIG_VDEV_ENC_SYSFS_PATH,
       spath);
  else
   nvlist_remove_all(nv, ZPOOL_CONFIG_VDEV_ENC_SYSFS_PATH);

  free(upath);
  free(spath);
 } else {

  (void) nvlist_remove_all(nv, ZPOOL_CONFIG_DEVID);
  (void) nvlist_remove_all(nv, ZPOOL_CONFIG_PHYS_PATH);
  (void) nvlist_remove_all(nv, ZPOOL_CONFIG_VDEV_ENC_SYSFS_PATH);
 }
}
