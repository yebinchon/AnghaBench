
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_ioc_t ;
typedef int zfs_ioc_legacy_func_t ;


 int B_TRUE ;
 int POOL_CHECK_READONLY ;
 int POOL_CHECK_SUSPENDED ;
 int POOL_NAME ;
 int zfs_ioctl_register_legacy (int ,int *,int ,int ,int ,int) ;
 int zfs_secpolicy_config ;

__attribute__((used)) static void
zfs_ioctl_register_pool_modify(zfs_ioc_t ioc, zfs_ioc_legacy_func_t *func)
{
 zfs_ioctl_register_legacy(ioc, func, zfs_secpolicy_config,
     POOL_NAME, B_TRUE, POOL_CHECK_SUSPENDED | POOL_CHECK_READONLY);
}
