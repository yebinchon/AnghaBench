
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int dsl_pool_t ;
typedef int dsl_dataset_t ;
typedef int ds_hold_flags_t ;
typedef int boolean_t ;


 int EBUSY ;
 int SET_ERROR (int ) ;
 int dsl_dataset_hold_obj_flags (int *,int ,int ,void*,int **) ;
 int dsl_dataset_rele_flags (int *,int ,void*) ;
 int dsl_dataset_tryown (int *,void*,int ) ;

__attribute__((used)) static int
dsl_dataset_own_obj_impl(dsl_pool_t *dp, uint64_t dsobj, ds_hold_flags_t flags,
    void *tag, boolean_t override, dsl_dataset_t **dsp)
{
 int err = dsl_dataset_hold_obj_flags(dp, dsobj, flags, tag, dsp);
 if (err != 0)
  return (err);
 if (!dsl_dataset_tryown(*dsp, tag, override)) {
  dsl_dataset_rele_flags(*dsp, flags, tag);
  *dsp = ((void*)0);
  return (SET_ERROR(EBUSY));
 }
 return (0);
}
