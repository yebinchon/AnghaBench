
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cred_t ;


 int ZFS_DELEG_PERM_DESTROY ;
 int ZFS_DELEG_PERM_MOUNT ;
 int zfs_secpolicy_write_perms (char const*,int ,int *) ;

int
zfs_secpolicy_destroy_perms(const char *name, cred_t *cr)
{
 int error;

 if ((error = zfs_secpolicy_write_perms(name,
     ZFS_DELEG_PERM_MOUNT, cr)) != 0)
  return (error);

 return (zfs_secpolicy_write_perms(name, ZFS_DELEG_PERM_DESTROY, cr));
}
