
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * z_ctldir; TYPE_3__* z_os; scalar_t__ z_issnap; } ;
typedef TYPE_1__ zfsvfs_t ;
typedef int zfs_snapentry_t ;
typedef int uint64_t ;
typedef int spa_t ;
struct TYPE_5__ {int * os_spa; } ;


 int RW_WRITER ;
 int dmu_objset_id (TYPE_3__*) ;
 int iput (int *) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int zfs_snapshot_lock ;
 int * zfsctl_snapshot_find_by_objsetid (int *,int ) ;
 int zfsctl_snapshot_rele (int *) ;
 int zfsctl_snapshot_remove (int *) ;
 int zfsctl_snapshot_unmount_cancel (int *) ;

void
zfsctl_destroy(zfsvfs_t *zfsvfs)
{
 if (zfsvfs->z_issnap) {
  zfs_snapentry_t *se;
  spa_t *spa = zfsvfs->z_os->os_spa;
  uint64_t objsetid = dmu_objset_id(zfsvfs->z_os);

  rw_enter(&zfs_snapshot_lock, RW_WRITER);
  se = zfsctl_snapshot_find_by_objsetid(spa, objsetid);
  if (se != ((void*)0))
   zfsctl_snapshot_remove(se);
  rw_exit(&zfs_snapshot_lock);
  if (se != ((void*)0)) {
   zfsctl_snapshot_unmount_cancel(se);
   zfsctl_snapshot_rele(se);
  }
 } else if (zfsvfs->z_ctldir) {
  iput(zfsvfs->z_ctldir);
  zfsvfs->z_ctldir = ((void*)0);
 }
}
