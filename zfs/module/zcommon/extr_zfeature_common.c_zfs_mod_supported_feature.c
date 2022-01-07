
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int B_TRUE ;
 int ZFS_SYSFS_POOL_FEATURES ;
 int zfs_mod_supported (int ,char const*) ;

__attribute__((used)) static boolean_t
zfs_mod_supported_feature(const char *name)
{
 return (zfs_mod_supported(ZFS_SYSFS_POOL_FEATURES, name));

}
