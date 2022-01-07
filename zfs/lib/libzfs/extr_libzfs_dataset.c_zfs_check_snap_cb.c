
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* zfs_name; } ;
typedef TYPE_1__ zfs_handle_t ;
struct destroydata {char* snapname; int nvl; } ;
typedef int name ;


 int EINVAL ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 scalar_t__ lzc_exists (char*) ;
 scalar_t__ nvlist_add_boolean (int ,char*) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int verify (int) ;
 int zfs_close (TYPE_1__*) ;
 int zfs_iter_filesystems (TYPE_1__*,int (*) (TYPE_1__*,void*),struct destroydata*) ;

__attribute__((used)) static int
zfs_check_snap_cb(zfs_handle_t *zhp, void *arg)
{
 struct destroydata *dd = arg;
 char name[ZFS_MAX_DATASET_NAME_LEN];
 int rv = 0;

 if (snprintf(name, sizeof (name), "%s@%s", zhp->zfs_name,
     dd->snapname) >= sizeof (name))
  return (EINVAL);

 if (lzc_exists(name))
  verify(nvlist_add_boolean(dd->nvl, name) == 0);

 rv = zfs_iter_filesystems(zhp, zfs_check_snap_cb, dd);
 zfs_close(zhp);
 return (rv);
}
