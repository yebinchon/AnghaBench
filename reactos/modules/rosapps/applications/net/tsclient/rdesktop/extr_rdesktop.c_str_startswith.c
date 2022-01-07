
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int ) ;

BOOL
str_startswith(const char *s, const char *prefix)
{
 return (strncmp(s, prefix, strlen(prefix)) == 0);
}
