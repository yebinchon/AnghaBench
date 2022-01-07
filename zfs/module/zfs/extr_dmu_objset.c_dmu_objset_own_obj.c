
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int objset_t ;
typedef int dsl_pool_t ;
typedef int dsl_dataset_t ;
typedef int ds_hold_flags_t ;
typedef int dmu_objset_type_t ;
typedef scalar_t__ boolean_t ;


 int DS_HOLD_FLAG_DECRYPT ;
 int dmu_objset_own_impl (int *,int ,scalar_t__,scalar_t__,void*,int **) ;
 int dsl_dataset_disown (int *,int ,void*) ;
 int dsl_dataset_own_obj (int *,int ,int ,void*,int **) ;

int
dmu_objset_own_obj(dsl_pool_t *dp, uint64_t obj, dmu_objset_type_t type,
    boolean_t readonly, boolean_t decrypt, void *tag, objset_t **osp)
{
 dsl_dataset_t *ds;
 int err;
 ds_hold_flags_t flags = (decrypt) ? DS_HOLD_FLAG_DECRYPT : 0;

 err = dsl_dataset_own_obj(dp, obj, flags, tag, &ds);
 if (err != 0)
  return (err);

 err = dmu_objset_own_impl(ds, type, readonly, decrypt, tag, osp);
 if (err != 0) {
  dsl_dataset_disown(ds, flags, tag);
  return (err);
 }

 return (0);
}
