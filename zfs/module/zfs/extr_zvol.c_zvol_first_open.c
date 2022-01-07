
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * zv_objset; int zv_name; int zv_state_lock; int zv_suspend_lock; } ;
typedef TYPE_1__ zvol_state_t ;
typedef int objset_t ;
typedef int boolean_t ;


 int ASSERT (int ) ;
 int B_TRUE ;
 int DMU_OST_ZVOL ;
 int EINTR ;
 int MUTEX_HELD (int *) ;
 int RW_READ_HELD (int *) ;
 int SET_ERROR (int) ;
 int dmu_objset_disown (int *,int,TYPE_1__*) ;
 int dmu_objset_own (int ,int ,int,int ,TYPE_1__*,int **) ;
 int mutex_exit (int *) ;
 int mutex_owned (int *) ;
 int mutex_tryenter (int *) ;
 int spa_namespace_lock ;
 int * strchr (int ,char) ;
 int zvol_setup_zv (TYPE_1__*) ;

int
zvol_first_open(zvol_state_t *zv, boolean_t readonly)
{
 objset_t *os;
 int error, locked = 0;
 boolean_t ro;

 ASSERT(RW_READ_HELD(&zv->zv_suspend_lock));
 ASSERT(MUTEX_HELD(&zv->zv_state_lock));
 if (!mutex_owned(&spa_namespace_lock)) {
  locked = mutex_tryenter(&spa_namespace_lock);
  if (!locked)
   return (SET_ERROR(EINTR));
 }

 ro = (readonly || (strchr(zv->zv_name, '@') != ((void*)0)));
 error = dmu_objset_own(zv->zv_name, DMU_OST_ZVOL, ro, B_TRUE, zv, &os);
 if (error)
  goto out_mutex;

 zv->zv_objset = os;

 error = zvol_setup_zv(zv);

 if (error) {
  dmu_objset_disown(os, 1, zv);
  zv->zv_objset = ((void*)0);
 }

out_mutex:
 if (locked)
  mutex_exit(&spa_namespace_lock);
 return (SET_ERROR(error));
}
