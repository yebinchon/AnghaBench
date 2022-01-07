
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dataset_props_kobj ;
 int kernel_features_kobj ;
 int pool_features_kobj ;
 int pool_props_kobj ;
 int zfs_kobj_fini (int *) ;

void
zfs_sysfs_fini(void)
{



 zfs_kobj_fini(&kernel_features_kobj);
 zfs_kobj_fini(&pool_features_kobj);
 zfs_kobj_fini(&dataset_props_kobj);
 zfs_kobj_fini(&pool_props_kobj);
}
