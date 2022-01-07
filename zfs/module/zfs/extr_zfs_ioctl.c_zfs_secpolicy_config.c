
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_cmd_t ;
typedef int nvlist_t ;
typedef int cred_t ;


 int B_FALSE ;
 int EPERM ;
 int SET_ERROR (int ) ;
 scalar_t__ secpolicy_sys_config (int *,int ) ;

int
zfs_secpolicy_config(zfs_cmd_t *zc, nvlist_t *innvl, cred_t *cr)
{
 if (secpolicy_sys_config(cr, B_FALSE) != 0)
  return (SET_ERROR(EPERM));

 return (0);
}
