
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* memchr (char const*,int ,size_t) ;

size_t
fz_strnlen(const char *s, size_t n)
{
 const char *p = memchr(s, 0, n);
 return p ? (size_t) (p - s) : n;
}
