
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_snapentry_t ;


 int ASSERT (int ) ;
 int RW_WRITE_HELD (int *) ;
 int avl_add (int *,int *) ;
 int zfs_snapshot_lock ;
 int zfs_snapshots_by_name ;
 int zfs_snapshots_by_objsetid ;
 int zfsctl_snapshot_hold (int *) ;

__attribute__((used)) static void
zfsctl_snapshot_add(zfs_snapentry_t *se)
{
 ASSERT(RW_WRITE_HELD(&zfs_snapshot_lock));
 zfsctl_snapshot_hold(se);
 avl_add(&zfs_snapshots_by_name, se);
 avl_add(&zfs_snapshots_by_objsetid, se);
}
