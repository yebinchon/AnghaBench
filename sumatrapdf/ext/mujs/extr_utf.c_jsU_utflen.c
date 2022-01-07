
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uchar ;
typedef int Rune ;


 int Runeself ;
 int chartorune (int *,char const*) ;

int
utflen(const char *s)
{
 int c;
 int n;
 Rune rune;

 n = 0;
 for(;;) {
  c = *(uchar*)s;
  if(c < Runeself) {
   if(c == 0)
    return n;
   s++;
  } else
   s += chartorune(&rune, s);
  n++;
 }
}
