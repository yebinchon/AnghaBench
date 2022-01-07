
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 unsigned int ZFS_PROP_GROUPOBJQUOTA ;
 unsigned int ZFS_PROP_GROUPOBJUSED ;
 unsigned int ZFS_PROP_GROUPQUOTA ;
 unsigned int ZFS_PROP_GROUPUSED ;

__attribute__((used)) static boolean_t
zfs_prop_is_group(unsigned p)
{
 return (p == ZFS_PROP_GROUPUSED || p == ZFS_PROP_GROUPQUOTA ||
     p == ZFS_PROP_GROUPOBJUSED || p == ZFS_PROP_GROUPOBJQUOTA);
}
