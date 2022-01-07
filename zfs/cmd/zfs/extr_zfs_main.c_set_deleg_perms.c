
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zfs_type_t ;
typedef int zfs_handle_t ;
struct deleg_perms {int nvl; int un; } ;


 scalar_t__ ZFS_TYPE_FILESYSTEM ;
 scalar_t__ ZFS_TYPE_VOLUME ;
 scalar_t__ zfs_get_type (int *) ;
 int zfs_set_fsacl (int *,int ,int ) ;

__attribute__((used)) static int
set_deleg_perms(zfs_handle_t *zhp, void *data)
{
 struct deleg_perms *perms = (struct deleg_perms *)data;
 zfs_type_t zfs_type = zfs_get_type(zhp);

 if (zfs_type != ZFS_TYPE_FILESYSTEM && zfs_type != ZFS_TYPE_VOLUME)
  return (0);

 return (zfs_set_fsacl(zhp, perms->un, perms->nvl));
}
