
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int dsl_dataset_t ;


 int ZFS_NUM_PROPS ;
 int ZFS_PROP_TYPE ;
 int fnvlist_add_boolean (int *,int ) ;
 int prop_valid_for_ds (int *,int) ;
 int zfs_prop_to_name (int) ;
 int zfs_prop_visible (int) ;

__attribute__((used)) static void
zcp_dataset_system_props(dsl_dataset_t *ds, nvlist_t *nv)
{
 for (int prop = ZFS_PROP_TYPE; prop < ZFS_NUM_PROPS; prop++) {

  if (!zfs_prop_visible(prop))
   continue;

  if (!prop_valid_for_ds(ds, prop))
   continue;
  fnvlist_add_boolean(nv, zfs_prop_to_name(prop));
 }
}
