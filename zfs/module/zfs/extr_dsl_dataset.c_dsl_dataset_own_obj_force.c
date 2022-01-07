
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int dsl_pool_t ;
typedef int dsl_dataset_t ;
typedef int ds_hold_flags_t ;


 int B_TRUE ;
 int dsl_dataset_own_obj_impl (int *,int ,int ,void*,int ,int **) ;

int
dsl_dataset_own_obj_force(dsl_pool_t *dp, uint64_t dsobj,
    ds_hold_flags_t flags, void *tag, dsl_dataset_t **dsp)
{
 return (dsl_dataset_own_obj_impl(dp, dsobj, flags, tag, B_TRUE, dsp));
}
