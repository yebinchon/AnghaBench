
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * zv_objset; int zv_state_lock; int zv_suspend_lock; } ;
typedef TYPE_1__ zvol_state_t ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;
 int RW_READ_HELD (int *) ;
 int dmu_objset_disown (int *,int,TYPE_1__*) ;
 int zvol_shutdown_zv (TYPE_1__*) ;

void
zvol_last_close(zvol_state_t *zv)
{
 ASSERT(RW_READ_HELD(&zv->zv_suspend_lock));
 ASSERT(MUTEX_HELD(&zv->zv_state_lock));

 zvol_shutdown_zv(zv);

 dmu_objset_disown(zv->zv_objset, 1, zv);
 zv->zv_objset = ((void*)0);
}
