
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int parentname ;
typedef int cred_t ;


 int ZFS_DELEG_PERM_CREATE ;
 int ZFS_DELEG_PERM_MOUNT ;
 int ZFS_DELEG_PERM_RENAME ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int zfs_get_parent (char const*,char*,int) ;
 int zfs_secpolicy_write_perms (char const*,int ,int *) ;

int
zfs_secpolicy_rename_perms(const char *from, const char *to, cred_t *cr)
{
 char parentname[ZFS_MAX_DATASET_NAME_LEN];
 int error;

 if ((error = zfs_secpolicy_write_perms(from,
     ZFS_DELEG_PERM_RENAME, cr)) != 0)
  return (error);

 if ((error = zfs_secpolicy_write_perms(from,
     ZFS_DELEG_PERM_MOUNT, cr)) != 0)
  return (error);

 if ((error = zfs_get_parent(to, parentname,
     sizeof (parentname))) != 0)
  return (error);

 if ((error = zfs_secpolicy_write_perms(parentname,
     ZFS_DELEG_PERM_CREATE, cr)) != 0)
  return (error);

 if ((error = zfs_secpolicy_write_perms(parentname,
     ZFS_DELEG_PERM_MOUNT, cr)) != 0)
  return (error);

 return (error);
}
