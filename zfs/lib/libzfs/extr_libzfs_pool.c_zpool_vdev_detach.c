
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int zpool_name; int * zpool_hdl; } ;
typedef TYPE_1__ zpool_handle_t ;
struct TYPE_7__ {char* member_0; int zc_guid; int zc_name; } ;
typedef TYPE_2__ zfs_cmd_t ;
typedef int nvlist_t ;
typedef int msg ;
typedef int libzfs_handle_t ;
typedef scalar_t__ boolean_t ;




 int EZFS_BADTARGET ;
 int EZFS_ISL2CACHE ;
 int EZFS_ISSPARE ;
 int EZFS_NODEVICE ;
 int EZFS_NOREPLICAS ;
 int TEXT_DOMAIN ;
 int ZFS_IOC_VDEV_DETACH ;
 int ZPOOL_CONFIG_GUID ;
 char* dgettext (int ,char*) ;
 int errno ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,int *) ;
 int snprintf (char*,int,char*,char const*) ;
 int strlcpy (int ,int ,int) ;
 int verify (int) ;
 int zfs_error (int *,int ,char*) ;
 int zfs_error_aux (int *,char*) ;
 scalar_t__ zfs_ioctl (int *,int ,TYPE_2__*) ;
 int * zpool_find_vdev (TYPE_1__*,char const*,scalar_t__*,scalar_t__*,int *) ;
 int zpool_standard_error (int *,int,char*) ;

int
zpool_vdev_detach(zpool_handle_t *zhp, const char *path)
{
 zfs_cmd_t zc = {"\0"};
 char msg[1024];
 nvlist_t *tgt;
 boolean_t avail_spare, l2cache;
 libzfs_handle_t *hdl = zhp->zpool_hdl;

 (void) snprintf(msg, sizeof (msg),
     dgettext(TEXT_DOMAIN, "cannot detach %s"), path);

 (void) strlcpy(zc.zc_name, zhp->zpool_name, sizeof (zc.zc_name));
 if ((tgt = zpool_find_vdev(zhp, path, &avail_spare, &l2cache,
     ((void*)0))) == ((void*)0))
  return (zfs_error(hdl, EZFS_NODEVICE, msg));

 if (avail_spare)
  return (zfs_error(hdl, EZFS_ISSPARE, msg));

 if (l2cache)
  return (zfs_error(hdl, EZFS_ISL2CACHE, msg));

 verify(nvlist_lookup_uint64(tgt, ZPOOL_CONFIG_GUID, &zc.zc_guid) == 0);

 if (zfs_ioctl(hdl, ZFS_IOC_VDEV_DETACH, &zc) == 0)
  return (0);

 switch (errno) {

 case 128:



  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN, "only "
      "applicable to mirror and replacing vdevs"));
  (void) zfs_error(hdl, EZFS_BADTARGET, msg);
  break;

 case 129:



  (void) zfs_error(hdl, EZFS_NOREPLICAS, msg);
  break;

 default:
  (void) zpool_standard_error(hdl, errno, msg);
 }

 return (-1);
}
