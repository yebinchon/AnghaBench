
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fz_strncasecmp (char const*,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static int startswith(const char *a, const char *b)
{
 return !fz_strncasecmp(a, b, strlen(b));
}
