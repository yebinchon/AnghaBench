
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int os_dsl_dataset; } ;
typedef TYPE_1__ objset_t ;
typedef scalar_t__ boolean_t ;


 int DS_HOLD_FLAG_DECRYPT ;
 int dmu_objset_upgrade_stop (TYPE_1__*) ;
 int dsl_dataset_disown (int ,int ,void*) ;

void
dmu_objset_disown(objset_t *os, boolean_t decrypt, void *tag)
{



 dmu_objset_upgrade_stop(os);
 dsl_dataset_disown(os->os_dsl_dataset,
     (decrypt) ? DS_HOLD_FLAG_DECRYPT : 0, tag);
}
