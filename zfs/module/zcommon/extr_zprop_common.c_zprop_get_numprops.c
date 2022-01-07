
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zfs_type_t ;


 int ZFS_NUM_PROPS ;
 scalar_t__ ZFS_TYPE_POOL ;
 int ZPOOL_NUM_PROPS ;

__attribute__((used)) static int
zprop_get_numprops(zfs_type_t type)
{
 if (type == ZFS_TYPE_POOL)
  return (ZPOOL_NUM_PROPS);
 else
  return (ZFS_NUM_PROPS);
}
