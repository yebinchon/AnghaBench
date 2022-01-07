
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ MSize ;


 scalar_t__ memchr (char const*,int,scalar_t__) ;
 scalar_t__ memcmp (char const*,char const*,scalar_t__) ;

const char *lj_str_find(const char *s, const char *p, MSize slen, MSize plen)
{
  if (plen <= slen) {
    if (plen == 0) {
      return s;
    } else {
      int c = *(const uint8_t *)p++;
      plen--; slen -= plen;
      while (slen) {
 const char *q = (const char *)memchr(s, c, slen);
 if (!q) break;
 if (memcmp(q+1, p, plen) == 0) return q;
 q++; slen -= (MSize)(q-s); s = q;
      }
    }
  }
  return ((void*)0);
}
