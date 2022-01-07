
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_snapentry_t ;


 int ASSERT (int ) ;
 int RW_WRITE_HELD (int *) ;
 int avl_remove (int *,int *) ;
 int zfs_snapshot_lock ;
 int zfs_snapshots_by_name ;
 int zfs_snapshots_by_objsetid ;
 int zfsctl_snapshot_rele (int *) ;

__attribute__((used)) static void
zfsctl_snapshot_remove(zfs_snapentry_t *se)
{
 ASSERT(RW_WRITE_HELD(&zfs_snapshot_lock));
 avl_remove(&zfs_snapshots_by_name, se);
 avl_remove(&zfs_snapshots_by_objsetid, se);
 zfsctl_snapshot_rele(se);
}
