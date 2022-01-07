
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int strlen (char const*) ;
 int valid_char (char) ;

boolean_t
zfs_prop_user(const char *name)
{
 int i;
 char c;
 boolean_t foundsep = B_FALSE;

 for (i = 0; i < strlen(name); i++) {
  c = name[i];
  if (!valid_char(c))
   return (B_FALSE);
  if (c == ':')
   foundsep = B_TRUE;
 }

 if (!foundsep)
  return (B_FALSE);

 return (B_TRUE);
}
