
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int se_refcount; } ;
typedef TYPE_1__ zfs_snapentry_t ;


 int zfs_refcount_add (int *,int *) ;

__attribute__((used)) static void
zfsctl_snapshot_hold(zfs_snapentry_t *se)
{
 zfs_refcount_add(&se->se_refcount, ((void*)0));
}
