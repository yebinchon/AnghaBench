
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;
typedef int Rune ;


 int UTFmax ;
 int chartorune (int *,char const*) ;
 char* checkstring (int *,int ) ;
 int js_endtry (int *) ;
 int js_free (int *,char*) ;
 char* js_malloc (int *,int) ;
 int js_pushstring (int *,char*) ;
 int js_throw (int *) ;
 scalar_t__ js_try (int *) ;
 int runetochar (char*,int *) ;
 int strlen (char const*) ;
 int toupperrune (int ) ;

__attribute__((used)) static void Sp_toUpperCase(js_State *J)
{
 const char *src = checkstring(J, 0);
 char *dst = js_malloc(J, UTFmax * strlen(src) + 1);
 const char *s = src;
 char *d = dst;
 Rune rune;
 while (*s) {
  s += chartorune(&rune, s);
  rune = toupperrune(rune);
  d += runetochar(d, &rune);
 }
 *d = 0;
 if (js_try(J)) {
  js_free(J, dst);
  js_throw(J);
 }
 js_pushstring(J, dst);
 js_endtry(J);
 js_free(J, dst);
}
