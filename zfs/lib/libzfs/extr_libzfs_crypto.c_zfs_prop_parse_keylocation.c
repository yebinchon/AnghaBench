
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_keylocation_t ;


 int ZFS_KEYLOCATION_NONE ;
 int ZFS_KEYLOCATION_PROMPT ;
 int ZFS_KEYLOCATION_URI ;
 scalar_t__ strcmp (char*,char const*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,int) ;

__attribute__((used)) static zfs_keylocation_t
zfs_prop_parse_keylocation(const char *str)
{
 if (strcmp("prompt", str) == 0)
  return (ZFS_KEYLOCATION_PROMPT);
 else if (strlen(str) > 8 && strncmp("file:///", str, 8) == 0)
  return (ZFS_KEYLOCATION_URI);

 return (ZFS_KEYLOCATION_NONE);
}
