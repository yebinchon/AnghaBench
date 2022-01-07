
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 unsigned int ZFS_PROP_USEROBJQUOTA ;
 unsigned int ZFS_PROP_USEROBJUSED ;
 unsigned int ZFS_PROP_USERQUOTA ;
 unsigned int ZFS_PROP_USERUSED ;

__attribute__((used)) static boolean_t
zfs_prop_is_user(unsigned p)
{
 return (p == ZFS_PROP_USERUSED || p == ZFS_PROP_USERQUOTA ||
     p == ZFS_PROP_USEROBJUSED || p == ZFS_PROP_USEROBJQUOTA);
}
