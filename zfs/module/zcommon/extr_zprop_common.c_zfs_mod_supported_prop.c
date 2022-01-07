
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zfs_type_t ;
typedef int boolean_t ;


 int B_TRUE ;
 int ZFS_SYSFS_DATASET_PROPERTIES ;
 int ZFS_SYSFS_POOL_PROPERTIES ;
 scalar_t__ ZFS_TYPE_POOL ;
 int zfs_mod_supported (int ,char const*) ;

__attribute__((used)) static boolean_t
zfs_mod_supported_prop(const char *name, zfs_type_t type)
{
 return (zfs_mod_supported(type == ZFS_TYPE_POOL ?
     ZFS_SYSFS_POOL_PROPERTIES : ZFS_SYSFS_DATASET_PROPERTIES, name));

}
