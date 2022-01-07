
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct TYPE_2__ {struct kobject kobj; } ;
struct module {TYPE_1__ mkobj; } ;


 scalar_t__ THIS_MODULE ;
 int ZFS_TYPE_FILESYSTEM ;
 int ZFS_TYPE_POOL ;
 int dataset_props_kobj ;
 int fs_kobj ;
 int kernel_features_kobj ;
 struct kobject* kobject_create_and_add (char*,int ) ;
 int pool_features_kobj ;
 int pool_props_kobj ;
 int zfs_kernel_features_init (int *,struct kobject*) ;
 int zfs_kobj_fini (int *) ;
 int zfs_pool_features_init (int *,struct kobject*) ;
 int zfs_sysfs_properties_init (int *,struct kobject*,int ) ;

void
zfs_sysfs_init(void)
{
 struct kobject *parent;



 parent = &(((struct module *)(THIS_MODULE))->mkobj).kobj;

 int err;

 if (parent == ((void*)0))
  return;

 err = zfs_kernel_features_init(&kernel_features_kobj, parent);
 if (err)
  return;

 err = zfs_pool_features_init(&pool_features_kobj, parent);
 if (err) {
  zfs_kobj_fini(&kernel_features_kobj);
  return;
 }

 err = zfs_sysfs_properties_init(&pool_props_kobj, parent,
     ZFS_TYPE_POOL);
 if (err) {
  zfs_kobj_fini(&kernel_features_kobj);
  zfs_kobj_fini(&pool_features_kobj);
  return;
 }

 err = zfs_sysfs_properties_init(&dataset_props_kobj, parent,
     ZFS_TYPE_FILESYSTEM);
 if (err) {
  zfs_kobj_fini(&kernel_features_kobj);
  zfs_kobj_fini(&pool_features_kobj);
  zfs_kobj_fini(&pool_props_kobj);
  return;
 }
}
