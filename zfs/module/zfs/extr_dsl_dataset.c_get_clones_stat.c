
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int dsl_dataset_t ;


 int KM_SLEEP ;
 int VERIFY0 (int ) ;
 int ZFS_PROP_CLONES ;
 int ZPROP_VALUE ;
 int fnvlist_add_nvlist (int *,int ,int *) ;
 int * fnvlist_alloc () ;
 scalar_t__ get_clones_stat_impl (int *,int *) ;
 int nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 int zfs_prop_to_name (int ) ;

void
get_clones_stat(dsl_dataset_t *ds, nvlist_t *nv)
{
 nvlist_t *propval = fnvlist_alloc();
 nvlist_t *val;
 VERIFY0(nvlist_alloc(&val, 0, KM_SLEEP));

 if (get_clones_stat_impl(ds, val) == 0) {
  fnvlist_add_nvlist(propval, ZPROP_VALUE, val);
  fnvlist_add_nvlist(nv, zfs_prop_to_name(ZFS_PROP_CLONES),
      propval);
 }

 nvlist_free(val);
 nvlist_free(propval);
}
