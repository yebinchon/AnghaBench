
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ zl_suspend; int zl_lock; } ;
typedef TYPE_1__ zilog_t ;
typedef int objset_t ;


 int ASSERT (int) ;
 int dmu_objset_ds (int *) ;
 TYPE_1__* dmu_objset_zil (int *) ;
 int dsl_dataset_long_rele (int ,int ) ;
 int dsl_dataset_rele (int ,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int suspend_tag ;

void
zil_resume(void *cookie)
{
 objset_t *os = cookie;
 zilog_t *zilog = dmu_objset_zil(os);

 mutex_enter(&zilog->zl_lock);
 ASSERT(zilog->zl_suspend != 0);
 zilog->zl_suspend--;
 mutex_exit(&zilog->zl_lock);
 dsl_dataset_long_rele(dmu_objset_ds(os), suspend_tag);
 dsl_dataset_rele(dmu_objset_ds(os), suspend_tag);
}
