
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ strcmp (char*,char const*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,int) ;

boolean_t
zfs_prop_valid_keylocation(const char *str, boolean_t encrypted)
{
 if (strcmp("none", str) == 0)
  return (!encrypted);
 else if (strcmp("prompt", str) == 0)
  return (B_TRUE);
 else if (strlen(str) > 8 && strncmp("file:///", str, 8) == 0)
  return (B_TRUE);

 return (B_FALSE);
}
