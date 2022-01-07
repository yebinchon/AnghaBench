
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int os_dsl_dataset; } ;
typedef TYPE_1__ objset_t ;
typedef int nvlist_t ;


 int dsl_prop_get_all_ds (int ,int **,int ) ;

int
dsl_prop_get_all(objset_t *os, nvlist_t **nvp)
{
 return (dsl_prop_get_all_ds(os->os_dsl_dataset, nvp, 0));
}
