
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t zfs_userquota_prop_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 size_t ZFS_NUM_USERQUOTA_PROPS ;
 int strlen (int ) ;
 scalar_t__ strncmp (char const*,int ,int ) ;
 int * zfs_userquota_prop_prefixes ;

boolean_t
zfs_prop_userquota(const char *name)
{
 zfs_userquota_prop_t prop;

 for (prop = 0; prop < ZFS_NUM_USERQUOTA_PROPS; prop++) {
  if (strncmp(name, zfs_userquota_prop_prefixes[prop],
      strlen(zfs_userquota_prop_prefixes[prop])) == 0) {
   return (B_TRUE);
  }
 }

 return (B_FALSE);
}
