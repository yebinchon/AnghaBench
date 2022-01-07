
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dsl_pool_t ;
typedef int dsl_dataset_t ;
typedef int ds_hold_flags_t ;


 int B_FALSE ;
 int dsl_dataset_own_impl (int *,char const*,int ,void*,int ,int **) ;

int
dsl_dataset_own(dsl_pool_t *dp, const char *name, ds_hold_flags_t flags,
    void *tag, dsl_dataset_t **dsp)
{
 return (dsl_dataset_own_impl(dp, name, flags, tag, B_FALSE, dsp));
}
