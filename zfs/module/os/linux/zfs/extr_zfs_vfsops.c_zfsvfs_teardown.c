
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {void* z_suspended; scalar_t__ z_sa_hdl; } ;
typedef TYPE_2__ znode_t ;
struct TYPE_15__ {scalar_t__ z_nr_znodes; int * z_os; int z_teardown_lock; int z_teardown_inactive_lock; void* z_unmounted; int z_znodes_lock; int z_all_znodes; int * z_log; TYPE_1__* z_parent; } ;
typedef TYPE_3__ zfsvfs_t ;
typedef int objset_t ;
typedef void* boolean_t ;
struct TYPE_13__ {int z_sb; } ;


 void* B_FALSE ;
 void* B_TRUE ;
 int EIO ;
 int FTAG ;
 int RW_WRITER ;
 int SET_ERROR (int ) ;
 int TXG_SIZE ;
 int ZTOI (TYPE_2__*) ;
 int dmu_objset_evict_dbufs (int *) ;
 scalar_t__ dmu_objset_is_dirty (int *,int) ;
 int dmu_objset_pool (int *) ;
 int dsl_pool_iput_taskq (int ) ;
 int * igrab (int ) ;
 TYPE_2__* list_head (int *) ;
 TYPE_2__* list_next (int *,TYPE_2__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int rrm_enter (int *,int ,int ) ;
 int rrm_exit (int *,int ) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int shrink_dcache_sb (int ) ;
 int taskq_wait_outstanding (int ,int ) ;
 int txg_wait_synced (int ,int ) ;
 int zfs_is_readonly (TYPE_3__*) ;
 int zfs_unlinked_drain_stop_wait (TYPE_3__*) ;
 int zfs_unregister_callbacks (TYPE_3__*) ;
 int zfs_znode_dmu_fini (TYPE_2__*) ;
 int zil_close (int *) ;

__attribute__((used)) static int
zfsvfs_teardown(zfsvfs_t *zfsvfs, boolean_t unmounting)
{
 znode_t *zp;

 zfs_unlinked_drain_stop_wait(zfsvfs);






 if (zfsvfs->z_os) {
  int round = 0;
  while (zfsvfs->z_nr_znodes > 0) {
   taskq_wait_outstanding(dsl_pool_iput_taskq(
       dmu_objset_pool(zfsvfs->z_os)), 0);
   if (++round > 1 && !unmounting)
    break;
  }
 }

 rrm_enter(&zfsvfs->z_teardown_lock, RW_WRITER, FTAG);

 if (!unmounting) {







  shrink_dcache_sb(zfsvfs->z_parent->z_sb);
 }





 if (zfsvfs->z_log) {
  zil_close(zfsvfs->z_log);
  zfsvfs->z_log = ((void*)0);
 }

 rw_enter(&zfsvfs->z_teardown_inactive_lock, RW_WRITER);






 if (!unmounting && (zfsvfs->z_unmounted || zfsvfs->z_os == ((void*)0))) {
  rw_exit(&zfsvfs->z_teardown_inactive_lock);
  rrm_exit(&zfsvfs->z_teardown_lock, FTAG);
  return (SET_ERROR(EIO));
 }
 if (!unmounting) {
  mutex_enter(&zfsvfs->z_znodes_lock);
  for (zp = list_head(&zfsvfs->z_all_znodes); zp != ((void*)0);
      zp = list_next(&zfsvfs->z_all_znodes, zp)) {
   if (zp->z_sa_hdl)
    zfs_znode_dmu_fini(zp);
   if (igrab(ZTOI(zp)) != ((void*)0))
    zp->z_suspended = B_TRUE;

  }
  mutex_exit(&zfsvfs->z_znodes_lock);
 }






 if (unmounting) {
  zfsvfs->z_unmounted = B_TRUE;
  rw_exit(&zfsvfs->z_teardown_inactive_lock);
  rrm_exit(&zfsvfs->z_teardown_lock, FTAG);
 }







 if (zfsvfs->z_os == ((void*)0))
  return (0);




 zfs_unregister_callbacks(zfsvfs);





 objset_t *os = zfsvfs->z_os;
 boolean_t os_dirty = B_FALSE;
 for (int t = 0; t < TXG_SIZE; t++) {
  if (dmu_objset_is_dirty(os, t)) {
   os_dirty = B_TRUE;
   break;
  }
 }
 if (!zfs_is_readonly(zfsvfs) && os_dirty) {
  txg_wait_synced(dmu_objset_pool(zfsvfs->z_os), 0);
 }
 dmu_objset_evict_dbufs(zfsvfs->z_os);

 return (0);
}
