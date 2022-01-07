
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ds_dbuf; } ;
typedef TYPE_1__ dsl_dataset_t ;


 int dmu_buf_rele (int ,void*) ;

void
dsl_dataset_rele(dsl_dataset_t *ds, void *tag)
{
 dmu_buf_rele(ds->ds_dbuf, tag);
}
