
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zfs_handle_t ;
struct TYPE_3__ {scalar_t__ sd_recursive; int sd_nvl; int sd_snapname; } ;
typedef TYPE_1__ snap_cbdata_t ;


 int ZFS_PROP_INCONSISTENT ;
 int asprintf (char**,char*,int ,int ) ;
 int fnvlist_add_boolean (int ,char*) ;
 int free (char*) ;
 int nomem () ;
 int zfs_close (int *) ;
 int zfs_get_name (int *) ;
 int zfs_iter_filesystems (int *,int (*) (int *,void*),TYPE_1__*) ;
 scalar_t__ zfs_prop_get_int (int *,int ) ;

__attribute__((used)) static int
zfs_snapshot_cb(zfs_handle_t *zhp, void *arg)
{
 snap_cbdata_t *sd = arg;
 char *name;
 int rv = 0;
 int error;

 if (sd->sd_recursive &&
     zfs_prop_get_int(zhp, ZFS_PROP_INCONSISTENT) != 0) {
  zfs_close(zhp);
  return (0);
 }

 error = asprintf(&name, "%s@%s", zfs_get_name(zhp), sd->sd_snapname);
 if (error == -1)
  nomem();
 fnvlist_add_boolean(sd->sd_nvl, name);
 free(name);

 if (sd->sd_recursive)
  rv = zfs_iter_filesystems(zhp, zfs_snapshot_cb, sd);
 zfs_close(zhp);
 return (rv);
}
