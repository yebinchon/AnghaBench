
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 unsigned int ZFS_PROP_PROJECTOBJQUOTA ;
 unsigned int ZFS_PROP_PROJECTOBJUSED ;
 unsigned int ZFS_PROP_PROJECTQUOTA ;
 unsigned int ZFS_PROP_PROJECTUSED ;

__attribute__((used)) static boolean_t
zfs_prop_is_project(unsigned p)
{
 return (p == ZFS_PROP_PROJECTUSED || p == ZFS_PROP_PROJECTQUOTA ||
     p == ZFS_PROP_PROJECTOBJUSED || p == ZFS_PROP_PROJECTOBJQUOTA);
}
