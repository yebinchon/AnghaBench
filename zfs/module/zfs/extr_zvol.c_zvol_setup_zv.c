
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int zv_volsize; int zv_flags; int zv_dn; int zv_name; int * zv_zilog; int zv_suspend_lock; int zv_state_lock; int * zv_objset; } ;
typedef TYPE_1__ zvol_state_t ;
typedef int uint64_t ;
typedef int objset_t ;
struct TYPE_8__ {int (* zv_set_disk_ro ) (TYPE_1__*,int) ;int (* zv_set_capacity ) (TYPE_1__*,int) ;} ;


 int ASSERT (int ) ;
 int FTAG ;
 int MUTEX_HELD (int *) ;
 int RW_LOCK_HELD (int *) ;
 int SET_ERROR (int) ;
 int ZVOL_OBJ ;
 int ZVOL_RDONLY ;
 int ZVOL_WRITTEN_TO ;
 int ZVOL_ZAP_OBJ ;
 scalar_t__ dmu_objset_is_snapshot (int *) ;
 int dmu_objset_spa (int *) ;
 int dnode_hold (int *,int ,int ,int *) ;
 int dsl_prop_get_integer (int ,char*,int*,int *) ;
 TYPE_6__* ops ;
 int spa_writeable (int ) ;
 int stub1 (TYPE_1__*,int) ;
 int stub2 (TYPE_1__*,int) ;
 int stub3 (TYPE_1__*,int) ;
 int zap_lookup (int *,int ,char*,int,int,int*) ;

__attribute__((used)) static int
zvol_setup_zv(zvol_state_t *zv)
{
 uint64_t volsize;
 int error;
 uint64_t ro;
 objset_t *os = zv->zv_objset;

 ASSERT(MUTEX_HELD(&zv->zv_state_lock));
 ASSERT(RW_LOCK_HELD(&zv->zv_suspend_lock));

 zv->zv_zilog = ((void*)0);
 zv->zv_flags &= ~ZVOL_WRITTEN_TO;

 error = dsl_prop_get_integer(zv->zv_name, "readonly", &ro, ((void*)0));
 if (error)
  return (SET_ERROR(error));

 error = zap_lookup(os, ZVOL_ZAP_OBJ, "size", 8, 1, &volsize);
 if (error)
  return (SET_ERROR(error));

 error = dnode_hold(os, ZVOL_OBJ, FTAG, &zv->zv_dn);
 if (error)
  return (SET_ERROR(error));

 ops->zv_set_capacity(zv, volsize >> 9);
 zv->zv_volsize = volsize;

 if (ro || dmu_objset_is_snapshot(os) ||
     !spa_writeable(dmu_objset_spa(os))) {
  ops->zv_set_disk_ro(zv, 1);
  zv->zv_flags |= ZVOL_RDONLY;
 } else {
  ops->zv_set_disk_ro(zv, 0);
  zv->zv_flags &= ~ZVOL_RDONLY;
 }
 return (0);
}
