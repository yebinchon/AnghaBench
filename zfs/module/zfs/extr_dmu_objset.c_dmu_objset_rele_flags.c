
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int os_dsl_dataset; } ;
typedef TYPE_1__ objset_t ;
typedef int dsl_pool_t ;
typedef int ds_hold_flags_t ;
typedef scalar_t__ boolean_t ;


 int DS_HOLD_FLAG_DECRYPT ;
 int * dmu_objset_pool (TYPE_1__*) ;
 int dsl_dataset_rele_flags (int ,int ,void*) ;
 int dsl_pool_rele (int *,void*) ;

void
dmu_objset_rele_flags(objset_t *os, boolean_t decrypt, void *tag)
{
 ds_hold_flags_t flags = (decrypt) ? DS_HOLD_FLAG_DECRYPT : 0;

 dsl_pool_t *dp = dmu_objset_pool(os);
 dsl_dataset_rele_flags(os->os_dsl_dataset, flags, tag);
 dsl_pool_rele(dp, tag);
}
