
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int avl_destroy (int *) ;
 int rw_destroy (int *) ;
 int zfs_snapshot_lock ;
 int zfs_snapshots_by_name ;
 int zfs_snapshots_by_objsetid ;

void
zfsctl_fini(void)
{
 avl_destroy(&zfs_snapshots_by_name);
 avl_destroy(&zfs_snapshots_by_objsetid);
 rw_destroy(&zfs_snapshot_lock);
}
