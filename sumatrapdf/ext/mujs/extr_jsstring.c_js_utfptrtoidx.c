
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Rune ;


 unsigned char Runeself ;
 int chartorune (int *,char const*) ;

int js_utfptrtoidx(const char *s, const char *p)
{
 Rune rune;
 int i = 0;
 while (s < p) {
  if (*(unsigned char *)s < Runeself)
   ++s;
  else
   s += chartorune(&rune, s);
  ++i;
 }
 return i;
}
