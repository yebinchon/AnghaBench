
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* memchr (void const*,char const,size_t) ;
 scalar_t__ memcmp (char const*,char const*,size_t) ;

void *
memmem(const void *l, size_t l_len, const void *s, size_t s_len)
{
 const char *cur, *last;
 const char *cl = l;
 const char *cs = s;


 if (s_len == 0)
  return (void *)cl;


 if (l_len < s_len)
  return ((void*)0);


 if (s_len == 1)
  return memchr(l, *cs, l_len);


 last = cl + l_len - s_len;

 for (cur = cl; cur <= last; cur++)
  if (cur[0] == cs[0] && memcmp(cur, cs, s_len) == 0)
   return (void *)cur;

 return ((void*)0);
}
