
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* zpool_name; int zpool_hdl; } ;
typedef TYPE_1__ zpool_handle_t ;
struct TYPE_6__ {char* member_0; char* zc_name; char* zc_value; scalar_t__ zc_obj; } ;
typedef TYPE_2__ zfs_cmd_t ;
typedef scalar_t__ uint64_t ;
typedef char* longlong_t ;
typedef int dsname ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 int ZFS_IOC_DSOBJ_TO_DSNAME ;
 int ZFS_IOC_OBJ_TO_PATH ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int free (char*) ;
 scalar_t__ is_mounted (int ,char*,char**) ;
 int snprintf (char*,size_t,char*,char*,...) ;
 int strlcpy (char*,char*,int) ;
 scalar_t__ zfs_ioctl (int ,int ,TYPE_2__*) ;

void
zpool_obj_to_path(zpool_handle_t *zhp, uint64_t dsobj, uint64_t obj,
    char *pathname, size_t len)
{
 zfs_cmd_t zc = {"\0"};
 boolean_t mounted = B_FALSE;
 char *mntpnt = ((void*)0);
 char dsname[ZFS_MAX_DATASET_NAME_LEN];

 if (dsobj == 0) {

  (void) snprintf(pathname, len, "<metadata>:<0x%llx>",
      (longlong_t)obj);
  return;
 }


 (void) strlcpy(zc.zc_name, zhp->zpool_name, sizeof (zc.zc_name));
 zc.zc_obj = dsobj;
 if (zfs_ioctl(zhp->zpool_hdl,
     ZFS_IOC_DSOBJ_TO_DSNAME, &zc) != 0) {

  (void) snprintf(pathname, len, "<0x%llx>:<0x%llx>",
      (longlong_t)dsobj, (longlong_t)obj);
  return;
 }
 (void) strlcpy(dsname, zc.zc_value, sizeof (dsname));


 mounted = is_mounted(zhp->zpool_hdl, dsname, &mntpnt);


 (void) strlcpy(zc.zc_name, dsname, sizeof (zc.zc_name));
 zc.zc_obj = obj;
 if (zfs_ioctl(zhp->zpool_hdl, ZFS_IOC_OBJ_TO_PATH,
     &zc) == 0) {
  if (mounted) {
   (void) snprintf(pathname, len, "%s%s", mntpnt,
       zc.zc_value);
  } else {
   (void) snprintf(pathname, len, "%s:%s",
       dsname, zc.zc_value);
  }
 } else {
  (void) snprintf(pathname, len, "%s:<0x%llx>", dsname,
      (longlong_t)obj);
 }
 free(mntpnt);
}
