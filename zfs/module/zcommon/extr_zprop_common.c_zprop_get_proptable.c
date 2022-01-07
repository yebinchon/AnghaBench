
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zprop_desc_t ;
typedef scalar_t__ zfs_type_t ;


 scalar_t__ ZFS_TYPE_POOL ;
 int * zfs_prop_get_table () ;
 int * zpool_prop_get_table () ;

__attribute__((used)) static zprop_desc_t *
zprop_get_proptable(zfs_type_t type)
{
 if (type == ZFS_TYPE_POOL)
  return (zpool_prop_get_table());
 else
  return (zfs_prop_get_table());
}
