
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zv_flags; int zv_objset; int * zv_dn; int * zv_zilog; int zv_suspend_lock; int zv_state_lock; } ;
typedef TYPE_1__ zvol_state_t ;


 int ASSERT (int) ;
 int FTAG ;
 scalar_t__ MUTEX_HELD (int *) ;
 scalar_t__ RW_LOCK_HELD (int *) ;
 int ZVOL_WRITTEN_TO ;
 int dmu_objset_evict_dbufs (int ) ;
 int dmu_objset_pool (int ) ;
 int dnode_rele (int *,int ) ;
 int txg_wait_synced (int ,int ) ;
 int zil_close (int *) ;

__attribute__((used)) static void
zvol_shutdown_zv(zvol_state_t *zv)
{
 ASSERT(MUTEX_HELD(&zv->zv_state_lock) &&
     RW_LOCK_HELD(&zv->zv_suspend_lock));

 if (zv->zv_flags & ZVOL_WRITTEN_TO) {
  ASSERT(zv->zv_zilog != ((void*)0));
  zil_close(zv->zv_zilog);
 }

 zv->zv_zilog = ((void*)0);

 dnode_rele(zv->zv_dn, FTAG);
 zv->zv_dn = ((void*)0);





 if (zv->zv_flags & ZVOL_WRITTEN_TO)
  txg_wait_synced(dmu_objset_pool(zv->zv_objset), 0);
 (void) dmu_objset_evict_dbufs(zv->zv_objset);
}
