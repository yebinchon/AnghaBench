
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int nvlist_t ;
typedef int cred_t ;


 int B_FALSE ;
 int ZFS_DELEG_PERM_DIFF ;
 int secpolicy_sys_config (int *,int ) ;
 int zfs_secpolicy_write_perms (int ,int ,int *) ;

__attribute__((used)) static int
zfs_secpolicy_diff(zfs_cmd_t *zc, nvlist_t *innvl, cred_t *cr)
{
 int error;

 if ((error = secpolicy_sys_config(cr, B_FALSE)) == 0)
  return (0);

 error = zfs_secpolicy_write_perms(zc->zc_name, ZFS_DELEG_PERM_DIFF, cr);
 return (error);
}
