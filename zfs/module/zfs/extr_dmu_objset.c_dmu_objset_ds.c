
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * os_dsl_dataset; } ;
typedef TYPE_1__ objset_t ;
typedef int dsl_dataset_t ;



dsl_dataset_t *
dmu_objset_ds(objset_t *os)
{
 return (os->os_dsl_dataset);
}
