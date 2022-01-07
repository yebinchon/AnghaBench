
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zc_cleanup_fd; int zc_value; int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int u_longlong_t ;
typedef int minor_t ;


 scalar_t__ ddi_get_lbolt64 () ;
 int dsl_dataset_snapshot_tmp (int ,char*,int ,char*) ;
 char* kmem_asprintf (char*,int ,...) ;
 int kmem_strfree (char*) ;
 int strlcpy (int ,char*,int) ;
 int zfs_onexit_fd_hold (int ,int *) ;
 int zfs_onexit_fd_rele (int ) ;

__attribute__((used)) static int
zfs_ioc_tmp_snapshot(zfs_cmd_t *zc)
{
 char *snap_name;
 char *hold_name;
 int error;
 minor_t minor;

 error = zfs_onexit_fd_hold(zc->zc_cleanup_fd, &minor);
 if (error != 0)
  return (error);

 snap_name = kmem_asprintf("%s-%016llx", zc->zc_value,
     (u_longlong_t)ddi_get_lbolt64());
 hold_name = kmem_asprintf("%%%s", zc->zc_value);

 error = dsl_dataset_snapshot_tmp(zc->zc_name, snap_name, minor,
     hold_name);
 if (error == 0)
  (void) strlcpy(zc->zc_value, snap_name,
      sizeof (zc->zc_value));
 kmem_strfree(snap_name);
 kmem_strfree(hold_name);
 zfs_onexit_fd_rele(zc->zc_cleanup_fd);
 return (error);
}
