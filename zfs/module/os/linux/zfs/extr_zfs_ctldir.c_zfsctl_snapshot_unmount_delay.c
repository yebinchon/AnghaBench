
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_snapentry_t ;
typedef int uint64_t ;
typedef int spa_t ;


 int ENOENT ;
 int RW_READER ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int zfs_snapshot_lock ;
 int * zfsctl_snapshot_find_by_objsetid (int *,int ) ;
 int zfsctl_snapshot_rele (int *) ;
 int zfsctl_snapshot_unmount_cancel (int *) ;
 int zfsctl_snapshot_unmount_delay_impl (int *,int) ;

int
zfsctl_snapshot_unmount_delay(spa_t *spa, uint64_t objsetid, int delay)
{
 zfs_snapentry_t *se;
 int error = ENOENT;

 rw_enter(&zfs_snapshot_lock, RW_READER);
 if ((se = zfsctl_snapshot_find_by_objsetid(spa, objsetid)) != ((void*)0)) {
  zfsctl_snapshot_unmount_cancel(se);
  zfsctl_snapshot_unmount_delay_impl(se, delay);
  zfsctl_snapshot_rele(se);
  error = 0;
 }
 rw_exit(&zfs_snapshot_lock);

 return (error);
}
