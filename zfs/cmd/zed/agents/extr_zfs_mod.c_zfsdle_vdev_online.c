
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;
typedef int vdev_state_t ;
typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;
typedef int fullpath ;
typedef int boolean_t ;


 int B_FALSE ;
 int LOG_INFO ;
 int MAXPATHLEN ;
 scalar_t__ POOL_STATE_UNAVAIL ;
 int ZPOOL_CONFIG_PATH ;
 int ZPOOL_CONFIG_WHOLE_DISK ;
 int ZPOOL_PROP_AUTOEXPAND ;
 int free (char*) ;
 int nvlist_lookup_string (int *,int ,char**) ;
 int nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 int strlcpy (char*,char*,int) ;
 char* strrchr (char*,char) ;
 int zed_log_msg (int ,char*,char*,int ,...) ;
 char* zfs_strip_partition (char*) ;
 int zpool_close (int *) ;
 int * zpool_find_vdev_by_physpath (int *,char*,int *,int *,int *) ;
 int zpool_get_name (int *) ;
 scalar_t__ zpool_get_prop_int (int *,int ,int *) ;
 scalar_t__ zpool_get_state (int *) ;
 int zpool_reopen_one (int *,int *) ;
 int zpool_vdev_online (int *,char*,int ,int *) ;

__attribute__((used)) static int
zfsdle_vdev_online(zpool_handle_t *zhp, void *data)
{
 char *devname = data;
 boolean_t avail_spare, l2cache;
 nvlist_t *tgt;
 int error;

 zed_log_msg(LOG_INFO, "zfsdle_vdev_online: searching for '%s' in '%s'",
     devname, zpool_get_name(zhp));

 if ((tgt = zpool_find_vdev_by_physpath(zhp, devname,
     &avail_spare, &l2cache, ((void*)0))) != ((void*)0)) {
  char *path, fullpath[MAXPATHLEN];
  uint64_t wholedisk;

  error = nvlist_lookup_string(tgt, ZPOOL_CONFIG_PATH, &path);
  if (error) {
   zpool_close(zhp);
   return (0);
  }

  error = nvlist_lookup_uint64(tgt, ZPOOL_CONFIG_WHOLE_DISK,
      &wholedisk);
  if (error)
   wholedisk = 0;

  if (wholedisk) {
   path = strrchr(path, '/');
   if (path != ((void*)0)) {
    path = zfs_strip_partition(path + 1);
    if (path == ((void*)0)) {
     zpool_close(zhp);
     return (0);
    }
   } else {
    zpool_close(zhp);
    return (0);
   }

   (void) strlcpy(fullpath, path, sizeof (fullpath));
   free(path);







   boolean_t scrub_restart = B_FALSE;
   (void) zpool_reopen_one(zhp, &scrub_restart);
  } else {
   (void) strlcpy(fullpath, path, sizeof (fullpath));
  }

  if (zpool_get_prop_int(zhp, ZPOOL_PROP_AUTOEXPAND, ((void*)0))) {
   vdev_state_t newstate;

   if (zpool_get_state(zhp) != POOL_STATE_UNAVAIL) {
    error = zpool_vdev_online(zhp, fullpath, 0,
        &newstate);
    zed_log_msg(LOG_INFO, "zfsdle_vdev_online: "
        "setting device '%s' to ONLINE state "
        "in pool '%s': %d", fullpath,
        zpool_get_name(zhp), error);
   }
  }
  zpool_close(zhp);
  return (1);
 }
 zpool_close(zhp);
 return (0);
}
