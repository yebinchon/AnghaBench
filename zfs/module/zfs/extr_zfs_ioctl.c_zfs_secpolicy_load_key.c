
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int nvlist_t ;
typedef int cred_t ;


 int ZFS_DELEG_PERM_LOAD_KEY ;
 int zfs_secpolicy_write_perms (int ,int ,int *) ;

__attribute__((used)) static int
zfs_secpolicy_load_key(zfs_cmd_t *zc, nvlist_t *innvl, cred_t *cr)
{
 return (zfs_secpolicy_write_perms(zc->zc_name,
     ZFS_DELEG_PERM_LOAD_KEY, cr));
}
