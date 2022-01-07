
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int ) ;

boolean_t
uu_strbw(const char *a, const char *b)
{
 return (strncmp(a, b, strlen(b)) == 0);
}
