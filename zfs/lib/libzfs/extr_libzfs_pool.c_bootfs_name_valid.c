
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int ZFS_TYPE_FILESYSTEM ;
 int ZFS_TYPE_SNAPSHOT ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int zfs_name_valid (char*,int) ;

__attribute__((used)) static boolean_t
bootfs_name_valid(const char *pool, char *bootfs)
{
 int len = strlen(pool);
 if (bootfs[0] == '\0')
  return (B_TRUE);

 if (!zfs_name_valid(bootfs, ZFS_TYPE_FILESYSTEM|ZFS_TYPE_SNAPSHOT))
  return (B_FALSE);

 if (strncmp(pool, bootfs, len) == 0 &&
     (bootfs[len] == '/' || bootfs[len] == '\0'))
  return (B_TRUE);

 return (B_FALSE);
}
