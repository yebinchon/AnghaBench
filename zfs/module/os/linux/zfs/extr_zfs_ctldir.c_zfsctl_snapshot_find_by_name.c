
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* se_name; } ;
typedef TYPE_1__ zfs_snapentry_t ;


 int ASSERT (int ) ;
 int RW_LOCK_HELD (int *) ;
 TYPE_1__* avl_find (int *,TYPE_1__*,int *) ;
 int zfs_snapshot_lock ;
 int zfs_snapshots_by_name ;
 int zfsctl_snapshot_hold (TYPE_1__*) ;

__attribute__((used)) static zfs_snapentry_t *
zfsctl_snapshot_find_by_name(char *snapname)
{
 zfs_snapentry_t *se, search;

 ASSERT(RW_LOCK_HELD(&zfs_snapshot_lock));

 search.se_name = snapname;
 se = avl_find(&zfs_snapshots_by_name, &search, ((void*)0));
 if (se)
  zfsctl_snapshot_hold(se);

 return (se);
}
