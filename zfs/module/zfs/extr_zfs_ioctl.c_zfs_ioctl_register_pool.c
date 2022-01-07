
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_secpolicy_func_t ;
typedef int zfs_ioc_t ;
typedef int zfs_ioc_poolcheck_t ;
typedef int zfs_ioc_legacy_func_t ;
typedef int boolean_t ;


 int POOL_NAME ;
 int zfs_ioctl_register_legacy (int ,int *,int *,int ,int ,int ) ;

__attribute__((used)) static void
zfs_ioctl_register_pool(zfs_ioc_t ioc, zfs_ioc_legacy_func_t *func,
    zfs_secpolicy_func_t *secpolicy, boolean_t log_history,
    zfs_ioc_poolcheck_t pool_check)
{
 zfs_ioctl_register_legacy(ioc, func, secpolicy,
     POOL_NAME, log_history, pool_check);
}
