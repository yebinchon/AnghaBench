
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int zpool_hdl; int zpool_name; } ;
typedef TYPE_1__ zpool_handle_t ;
typedef int zfs_handle_t ;
struct TYPE_9__ {char const* ms_mntopts; int ms_mntflags; int ms_mntstatus; int member_0; } ;
typedef TYPE_2__ mount_state_t ;
struct TYPE_10__ {int cb_used; int * cb_handles; int member_0; } ;
typedef TYPE_3__ get_all_cb_t ;


 int B_FALSE ;
 int B_TRUE ;
 int ZFS_TYPE_DATASET ;
 int free (int *) ;
 int libzfs_add_handle (TYPE_3__*,int *) ;
 int zfs_close (int ) ;
 int zfs_foreach_mountpoint (int ,int *,int,int ,TYPE_2__*,int ) ;
 int zfs_iter_cb ;
 scalar_t__ zfs_iter_filesystems (int *,int ,TYPE_3__*) ;
 int zfs_mount_one ;
 int * zfs_open (int ,int ,int ) ;
 int zfs_share_one ;

int
zpool_enable_datasets(zpool_handle_t *zhp, const char *mntopts, int flags)
{
 get_all_cb_t cb = { 0 };
 mount_state_t ms = { 0 };
 zfs_handle_t *zfsp;
 int ret = 0;

 if ((zfsp = zfs_open(zhp->zpool_hdl, zhp->zpool_name,
     ZFS_TYPE_DATASET)) == ((void*)0))
  goto out;






 libzfs_add_handle(&cb, zfsp);
 if (zfs_iter_filesystems(zfsp, zfs_iter_cb, &cb) != 0)
  goto out;




 ms.ms_mntopts = mntopts;
 ms.ms_mntflags = flags;
 zfs_foreach_mountpoint(zhp->zpool_hdl, cb.cb_handles, cb.cb_used,
     zfs_mount_one, &ms, B_TRUE);
 if (ms.ms_mntstatus != 0)
  ret = ms.ms_mntstatus;






 ms.ms_mntstatus = 0;
 zfs_foreach_mountpoint(zhp->zpool_hdl, cb.cb_handles, cb.cb_used,
     zfs_share_one, &ms, B_FALSE);
 if (ms.ms_mntstatus != 0)
  ret = ms.ms_mntstatus;

out:
 for (int i = 0; i < cb.cb_used; i++)
  zfs_close(cb.cb_handles[i]);
 free(cb.cb_handles);

 return (ret);
}
