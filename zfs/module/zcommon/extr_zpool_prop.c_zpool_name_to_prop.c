
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_prop_t ;


 int ZFS_TYPE_POOL ;
 int zprop_name_to_prop (char const*,int ) ;

zpool_prop_t
zpool_name_to_prop(const char *propname)
{
 return (zprop_name_to_prop(propname, ZFS_TYPE_POOL));
}
