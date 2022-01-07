
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char Rune ;


 unsigned char Runeself ;
 int chartorune (unsigned char*,char const*) ;

const char *js_utfidxtoptr(const char *s, int i)
{
 Rune rune;
 while (i-- > 0) {
  rune = *(unsigned char*)s;
  if (rune < Runeself) {
   if (rune == 0)
    return ((void*)0);
   ++s;
  } else
   s += chartorune(&rune, s);
 }
 return s;
}
