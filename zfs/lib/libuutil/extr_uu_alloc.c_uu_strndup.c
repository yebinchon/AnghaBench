
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,size_t) ;
 size_t strnlen (char const*,size_t) ;
 char* uu_zalloc (size_t) ;

char *
uu_strndup(const char *s, size_t n)
{
 size_t len;
 char *p;

 len = strnlen(s, n);
 p = uu_zalloc(len + 1);
 if (p == ((void*)0))
  return (((void*)0));

 if (len > 0)
  (void) memcpy(p, s, len);
 p[len] = '\0';

 return (p);
}
