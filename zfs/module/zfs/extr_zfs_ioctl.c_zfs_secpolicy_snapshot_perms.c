
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cred_t ;


 int ZFS_DELEG_PERM_SNAPSHOT ;
 int zfs_secpolicy_write_perms (char const*,int ,int *) ;

int
zfs_secpolicy_snapshot_perms(const char *name, cred_t *cr)
{
 return (zfs_secpolicy_write_perms(name,
     ZFS_DELEG_PERM_SNAPSHOT, cr));
}
