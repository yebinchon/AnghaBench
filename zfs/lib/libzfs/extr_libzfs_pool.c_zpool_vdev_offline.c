
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int zpool_name; int * zpool_hdl; } ;
typedef TYPE_1__ zpool_handle_t ;
struct TYPE_7__ {char* member_0; int zc_obj; int zc_cookie; int zc_guid; int zc_name; } ;
typedef TYPE_2__ zfs_cmd_t ;
typedef int nvlist_t ;
typedef int msg ;
typedef int libzfs_handle_t ;
typedef scalar_t__ boolean_t ;




 int EZFS_ISSPARE ;
 int EZFS_NODEVICE ;
 int EZFS_NOREPLICAS ;
 int EZFS_UNPLAYED_LOGS ;
 int TEXT_DOMAIN ;
 int VDEV_STATE_OFFLINE ;
 int ZFS_IOC_VDEV_SET_STATE ;
 int ZFS_OFFLINE_TEMPORARY ;
 int ZPOOL_CONFIG_GUID ;
 char* dgettext (int ,char*) ;
 int errno ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,int *) ;
 int snprintf (char*,int,char*,char const*) ;
 int strlcpy (int ,int ,int) ;
 int verify (int) ;
 int zfs_error (int *,int ,char*) ;
 scalar_t__ zfs_ioctl (int *,int ,TYPE_2__*) ;
 int * zpool_find_vdev (TYPE_1__*,char const*,scalar_t__*,scalar_t__*,int *) ;
 int zpool_standard_error (int *,int,char*) ;

int
zpool_vdev_offline(zpool_handle_t *zhp, const char *path, boolean_t istmp)
{
 zfs_cmd_t zc = {"\0"};
 char msg[1024];
 nvlist_t *tgt;
 boolean_t avail_spare, l2cache;
 libzfs_handle_t *hdl = zhp->zpool_hdl;

 (void) snprintf(msg, sizeof (msg),
     dgettext(TEXT_DOMAIN, "cannot offline %s"), path);

 (void) strlcpy(zc.zc_name, zhp->zpool_name, sizeof (zc.zc_name));
 if ((tgt = zpool_find_vdev(zhp, path, &avail_spare, &l2cache,
     ((void*)0))) == ((void*)0))
  return (zfs_error(hdl, EZFS_NODEVICE, msg));

 verify(nvlist_lookup_uint64(tgt, ZPOOL_CONFIG_GUID, &zc.zc_guid) == 0);

 if (avail_spare)
  return (zfs_error(hdl, EZFS_ISSPARE, msg));

 zc.zc_cookie = VDEV_STATE_OFFLINE;
 zc.zc_obj = istmp ? ZFS_OFFLINE_TEMPORARY : 0;

 if (zfs_ioctl(hdl, ZFS_IOC_VDEV_SET_STATE, &zc) == 0)
  return (0);

 switch (errno) {
 case 129:




  return (zfs_error(hdl, EZFS_NOREPLICAS, msg));

 case 128:



  return (zfs_error(hdl, EZFS_UNPLAYED_LOGS, msg));

 default:
  return (zpool_standard_error(hdl, errno, msg));
 }
}
