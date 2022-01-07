
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dsl_pool_t ;
typedef int dsl_dataset_t ;


 int dsl_dataset_hold_flags (int *,char const*,int ,void*,int **) ;

int
dsl_dataset_hold(dsl_pool_t *dp, const char *name, void *tag,
    dsl_dataset_t **dsp)
{
 return (dsl_dataset_hold_flags(dp, name, 0, tag, dsp));
}
