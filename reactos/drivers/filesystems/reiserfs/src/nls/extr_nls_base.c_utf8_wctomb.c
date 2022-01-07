
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long wchar_t ;
struct utf8_table {long lmask; int shift; long cval; scalar_t__ cmask; } ;
typedef int __u8 ;


 struct utf8_table* utf8_table ;

int
utf8_wctomb(__u8 *s, wchar_t wc, int maxlen)
{
 long l;
 int c, nc;
 struct utf8_table *t;

 if (s == 0)
  return 0;

 l = wc;
 nc = 0;
 for (t = utf8_table; t->cmask && maxlen; t++, maxlen--) {
  nc++;
  if (l <= t->lmask) {
   c = t->shift;
   *s = (__u8)(t->cval | (l >> c));
   while (c > 0) {
    c -= 6;
    s++;
    *s = 0x80 | (__u8)((l >> c) & 0x3F);
   }
   return nc;
  }
 }
 return -1;
}
