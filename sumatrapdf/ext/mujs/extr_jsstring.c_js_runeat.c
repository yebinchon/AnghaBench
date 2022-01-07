
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;
typedef int Rune ;


 int Runeself ;
 int chartorune (int*,char const*) ;

int js_runeat(js_State *J, const char *s, int i)
{
 Rune rune = 0;
 while (i-- >= 0) {
  rune = *(unsigned char*)s;
  if (rune < Runeself) {
   if (rune == 0)
    return 0;
   ++s;
  } else
   s += chartorune(&rune, s);
 }
 return rune;
}
