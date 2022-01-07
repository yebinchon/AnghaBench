
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Runeself ;
 int fz_chartorune (int*,char const*) ;

int
fz_utflen(const char *s)
{
 int c, n, rune;
 n = 0;
 for(;;) {
  c = *(const unsigned char*)s;
  if(c < Runeself) {
   if(c == 0)
    return n;
   s++;
  } else
   s += fz_chartorune(&rune, s);
  n++;
 }
 return 0;
}
