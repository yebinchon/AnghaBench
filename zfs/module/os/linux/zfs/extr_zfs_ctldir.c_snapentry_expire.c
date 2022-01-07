
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int se_name; int se_taskqid; int se_objsetid; int * se_spa; } ;
typedef TYPE_1__ zfs_snapentry_t ;
typedef int uint64_t ;
typedef int spa_t ;


 int MNT_EXPIRE ;
 int RW_READER ;
 int TASKQID_INVALID ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 scalar_t__ zfs_expire_snapshot ;
 int zfs_snapshot_lock ;
 TYPE_1__* zfsctl_snapshot_find_by_objsetid (int *,int ) ;
 int zfsctl_snapshot_rele (TYPE_1__*) ;
 int zfsctl_snapshot_unmount (int ,int ) ;
 int zfsctl_snapshot_unmount_delay_impl (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static void
snapentry_expire(void *data)
{
 zfs_snapentry_t *se = (zfs_snapentry_t *)data;
 spa_t *spa = se->se_spa;
 uint64_t objsetid = se->se_objsetid;

 if (zfs_expire_snapshot <= 0) {
  zfsctl_snapshot_rele(se);
  return;
 }

 se->se_taskqid = TASKQID_INVALID;
 (void) zfsctl_snapshot_unmount(se->se_name, MNT_EXPIRE);
 zfsctl_snapshot_rele(se);





 rw_enter(&zfs_snapshot_lock, RW_READER);
 if ((se = zfsctl_snapshot_find_by_objsetid(spa, objsetid)) != ((void*)0)) {
  zfsctl_snapshot_unmount_delay_impl(se, zfs_expire_snapshot);
  zfsctl_snapshot_rele(se);
 }
 rw_exit(&zfs_snapshot_lock);
}
