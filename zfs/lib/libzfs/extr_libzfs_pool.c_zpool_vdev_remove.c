
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int zpool_name; int * zpool_hdl; } ;
typedef TYPE_1__ zpool_handle_t ;
struct TYPE_9__ {char* member_0; int zc_guid; int zc_name; } ;
typedef TYPE_2__ zfs_cmd_t ;
typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;
typedef int msg ;
typedef int libzfs_handle_t ;
typedef scalar_t__ boolean_t ;





 int EZFS_BADVERSION ;
 int EZFS_BUSY ;
 int EZFS_INVALCONFIG ;
 int EZFS_NODEVICE ;
 scalar_t__ SPA_VERSION_HOLES ;
 int TEXT_DOMAIN ;
 int ZFS_IOC_VDEV_REMOVE ;
 int ZPOOL_CONFIG_GUID ;
 int ZPOOL_PROP_VERSION ;
 char* dgettext (int ,char*) ;
 int errno ;
 int fnvlist_lookup_uint64 (int *,int ) ;
 int snprintf (char*,int,char*,char const*) ;
 int strlcpy (int ,int ,int) ;
 int zfs_error (int *,int,char*) ;
 int zfs_error_aux (int *,char*) ;
 scalar_t__ zfs_ioctl (int *,int ,TYPE_2__*) ;
 int * zpool_find_vdev (TYPE_1__*,char const*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ zpool_get_prop_int (TYPE_1__*,int ,int *) ;
 scalar_t__ zpool_is_bootable (TYPE_1__*) ;
 int zpool_standard_error (int *,int,char*) ;

int
zpool_vdev_remove(zpool_handle_t *zhp, const char *path)
{
 zfs_cmd_t zc = {"\0"};
 char msg[1024];
 nvlist_t *tgt;
 boolean_t avail_spare, l2cache, islog;
 libzfs_handle_t *hdl = zhp->zpool_hdl;
 uint64_t version;

 (void) snprintf(msg, sizeof (msg),
     dgettext(TEXT_DOMAIN, "cannot remove %s"), path);

 (void) strlcpy(zc.zc_name, zhp->zpool_name, sizeof (zc.zc_name));
 if ((tgt = zpool_find_vdev(zhp, path, &avail_spare, &l2cache,
     &islog)) == ((void*)0))
  return (zfs_error(hdl, EZFS_NODEVICE, msg));

 version = zpool_get_prop_int(zhp, ZPOOL_PROP_VERSION, ((void*)0));
 if (islog && version < SPA_VERSION_HOLES) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "pool must be upgraded to support log removal"));
  return (zfs_error(hdl, EZFS_BADVERSION, msg));
 }

 if (!islog && !avail_spare && !l2cache && zpool_is_bootable(zhp)) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "root pool can not have removed devices, "
      "because GRUB does not understand them"));
  return (zfs_error(hdl, 128, msg));
 }

 zc.zc_guid = fnvlist_lookup_uint64(tgt, ZPOOL_CONFIG_GUID);

 if (zfs_ioctl(hdl, ZFS_IOC_VDEV_REMOVE, &zc) == 0)
  return (0);

 switch (errno) {

 case 128:
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "invalid config; all top-level vdevs must "
      "have the same sector size and not be raidz."));
  (void) zfs_error(hdl, EZFS_INVALCONFIG, msg);
  break;

 case 129:
  if (islog) {
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "Mount encrypted datasets to replay logs."));
  } else {
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "Pool busy; removal may already be in progress"));
  }
  (void) zfs_error(hdl, EZFS_BUSY, msg);
  break;

 case 130:
  if (islog) {
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "Mount encrypted datasets to replay logs."));
   (void) zfs_error(hdl, EZFS_BUSY, msg);
  } else {
   (void) zpool_standard_error(hdl, errno, msg);
  }
  break;

 default:
  (void) zpool_standard_error(hdl, errno, msg);
 }
 return (-1);
}
