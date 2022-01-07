
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char const*) ;
 int strncmp (char const*,char const*,size_t) ;

int
fz_option_eq(const char *a, const char *b)
{
 size_t n = strlen(b);
 return !strncmp(a, b, n) && (a[n] == ',' || a[n] == 0);
}
