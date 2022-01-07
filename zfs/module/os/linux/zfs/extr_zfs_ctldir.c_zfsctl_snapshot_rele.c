
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int se_refcount; } ;
typedef TYPE_1__ zfs_snapentry_t ;


 scalar_t__ zfs_refcount_remove (int *,int *) ;
 int zfsctl_snapshot_free (TYPE_1__*) ;

__attribute__((used)) static void
zfsctl_snapshot_rele(zfs_snapentry_t *se)
{
 if (zfs_refcount_remove(&se->se_refcount, ((void*)0)) == 0)
  zfsctl_snapshot_free(se);
}
