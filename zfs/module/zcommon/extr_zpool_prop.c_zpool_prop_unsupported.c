
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int ) ;

boolean_t
zpool_prop_unsupported(const char *name)
{
 static const char *prefix = "unsupported@";
 return (strncmp(name, prefix, strlen(prefix)) == 0);
}
