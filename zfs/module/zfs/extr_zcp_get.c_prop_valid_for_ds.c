
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zfs_type_t ;
typedef scalar_t__ zfs_prop_t ;
struct TYPE_4__ {int ds_dir; } ;
typedef TYPE_1__ dsl_dataset_t ;
typedef int boolean_t ;


 int B_FALSE ;
 scalar_t__ ZFS_PROP_ISCSIOPTIONS ;
 scalar_t__ ZFS_PROP_MOUNTED ;
 scalar_t__ ZFS_PROP_ORIGIN ;
 int dsl_dir_is_clone (int ) ;
 int get_objset_type (TYPE_1__*,int *) ;
 int zfs_prop_valid_for_type (scalar_t__,int ,int ) ;

boolean_t
prop_valid_for_ds(dsl_dataset_t *ds, zfs_prop_t zfs_prop)
{
 int error;
 zfs_type_t zfs_type;


 if ((zfs_prop == ZFS_PROP_ISCSIOPTIONS) ||
     (zfs_prop == ZFS_PROP_MOUNTED))
  return (B_FALSE);


 if ((zfs_prop == ZFS_PROP_ORIGIN) && (!dsl_dir_is_clone(ds->ds_dir)))
  return (B_FALSE);

 error = get_objset_type(ds, &zfs_type);
 if (error != 0)
  return (B_FALSE);
 return (zfs_prop_valid_for_type(zfs_prop, zfs_type, B_FALSE));
}
