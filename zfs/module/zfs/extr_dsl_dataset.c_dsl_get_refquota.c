
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int ds_quota; } ;
typedef TYPE_1__ dsl_dataset_t ;



uint64_t
dsl_get_refquota(dsl_dataset_t *ds)
{
 return (ds->ds_quota);
}
