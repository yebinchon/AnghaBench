
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int zpool_name; int * zpool_hdl; } ;
typedef TYPE_1__ zpool_handle_t ;
struct TYPE_8__ {char* member_0; int zc_obj; int zc_cookie; scalar_t__ zc_guid; int zc_name; } ;
typedef TYPE_2__ zfs_cmd_t ;
typedef int vdev_state_t ;
typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;
typedef int msg ;
typedef int libzfs_handle_t ;
typedef int buf ;
typedef scalar_t__ boolean_t ;


 scalar_t__ EINVAL ;
 int EZFS_ISSPARE ;
 int EZFS_NODEVICE ;
 int EZFS_POSTSPLIT_ONLINE ;
 int EZFS_VDEVNOTSUP ;
 int MAXPATHLEN ;
 int TEXT_DOMAIN ;
 int VDEV_STATE_ONLINE ;
 int ZFS_IOC_VDEV_SET_STATE ;
 int ZFS_ONLINE_EXPAND ;
 int ZPOOL_CONFIG_GUID ;
 int ZPOOL_CONFIG_PATH ;
 int ZPOOL_CONFIG_WHOLE_DISK ;
 int ZPOOL_PROP_AUTOEXPAND ;
 char* dgettext (int ,char*) ;
 scalar_t__ errno ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 int snprintf (char*,int,char*,char const*) ;
 int strlcpy (int ,int ,int) ;
 int verify (int) ;
 int zfs_error (int *,int ,char*) ;
 int zfs_error_aux (int *,char*,...) ;
 scalar_t__ zfs_ioctl (int *,int ,TYPE_2__*) ;
 int zfs_resolve_shortname (char const*,char*,int) ;
 int * zpool_find_vdev (TYPE_1__*,char const*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ zpool_get_prop_int (TYPE_1__*,int ,int *) ;
 int zpool_relabel_disk (int *,char const*,char*) ;
 int zpool_standard_error (int *,scalar_t__,char*) ;

int
zpool_vdev_online(zpool_handle_t *zhp, const char *path, int flags,
    vdev_state_t *newstate)
{
 zfs_cmd_t zc = {"\0"};
 char msg[1024];
 char *pathname;
 nvlist_t *tgt;
 boolean_t avail_spare, l2cache, islog;
 libzfs_handle_t *hdl = zhp->zpool_hdl;
 int error;

 if (flags & ZFS_ONLINE_EXPAND) {
  (void) snprintf(msg, sizeof (msg),
      dgettext(TEXT_DOMAIN, "cannot expand %s"), path);
 } else {
  (void) snprintf(msg, sizeof (msg),
      dgettext(TEXT_DOMAIN, "cannot online %s"), path);
 }

 (void) strlcpy(zc.zc_name, zhp->zpool_name, sizeof (zc.zc_name));
 if ((tgt = zpool_find_vdev(zhp, path, &avail_spare, &l2cache,
     &islog)) == ((void*)0))
  return (zfs_error(hdl, EZFS_NODEVICE, msg));

 verify(nvlist_lookup_uint64(tgt, ZPOOL_CONFIG_GUID, &zc.zc_guid) == 0);

 if (avail_spare)
  return (zfs_error(hdl, EZFS_ISSPARE, msg));

 if ((flags & ZFS_ONLINE_EXPAND ||
     zpool_get_prop_int(zhp, ZPOOL_PROP_AUTOEXPAND, ((void*)0))) &&
     nvlist_lookup_string(tgt, ZPOOL_CONFIG_PATH, &pathname) == 0) {
  uint64_t wholedisk = 0;

  (void) nvlist_lookup_uint64(tgt, ZPOOL_CONFIG_WHOLE_DISK,
      &wholedisk);




  if (l2cache) {
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "cannot expand cache devices"));
   return (zfs_error(hdl, EZFS_VDEVNOTSUP, msg));
  }

  if (wholedisk) {
   const char *fullpath = path;
   char buf[MAXPATHLEN];

   if (path[0] != '/') {
    error = zfs_resolve_shortname(path, buf,
        sizeof (buf));
    if (error != 0)
     return (zfs_error(hdl, EZFS_NODEVICE,
         msg));

    fullpath = buf;
   }

   error = zpool_relabel_disk(hdl, fullpath, msg);
   if (error != 0)
    return (error);
  }
 }

 zc.zc_cookie = VDEV_STATE_ONLINE;
 zc.zc_obj = flags;

 if (zfs_ioctl(hdl, ZFS_IOC_VDEV_SET_STATE, &zc) != 0) {
  if (errno == EINVAL) {
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN, "was split "
       "from this pool into a new one.  Use '%s' "
       "instead"), "zpool detach");
   return (zfs_error(hdl, EZFS_POSTSPLIT_ONLINE, msg));
  }
  return (zpool_standard_error(hdl, errno, msg));
 }

 *newstate = zc.zc_cookie;
 return (0);
}
