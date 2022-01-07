
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int zko_kobj; } ;
typedef TYPE_1__ zfs_mod_kobj_t ;
struct kobject {int dummy; } ;


 int KERNEL_FEATURE_COUNT ;
 int ZFS_SYSFS_KERNEL_FEATURES ;
 int kernel_feature_show ;
 int kernel_feature_to_kobj (TYPE_1__*,int,int ) ;
 int * zfs_kernel_features ;
 int zfs_kobj_add (TYPE_1__*,struct kobject*,int ) ;
 int zfs_kobj_init (TYPE_1__*,int ,int,int ) ;
 int zfs_kobj_release (int *) ;

__attribute__((used)) static int
zfs_kernel_features_init(zfs_mod_kobj_t *zfs_kobj, struct kobject *parent)
{





 int err = zfs_kobj_init(zfs_kobj, 0, KERNEL_FEATURE_COUNT,
     kernel_feature_show);
 if (err)
  return (err);
 err = zfs_kobj_add(zfs_kobj, parent, ZFS_SYSFS_KERNEL_FEATURES);
 if (err) {
  zfs_kobj_release(&zfs_kobj->zko_kobj);
  return (err);
 }






 for (int f = 0; f < KERNEL_FEATURE_COUNT; f++)
  kernel_feature_to_kobj(zfs_kobj, f, zfs_kernel_features[f]);

 return (0);
}
