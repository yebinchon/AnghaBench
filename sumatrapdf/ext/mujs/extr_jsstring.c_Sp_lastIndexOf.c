
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;
typedef int Rune ;


 int chartorune (int *,char const*) ;
 char* checkstring (int *,int ) ;
 scalar_t__ js_isdefined (int *,int) ;
 int js_pushnumber (int *,int) ;
 int js_tointeger (int *,int) ;
 char* js_tostring (int *,int) ;
 int strlen (char const*) ;
 int strncmp (char const*,char const*,int) ;

__attribute__((used)) static void Sp_lastIndexOf(js_State *J)
{
 const char *haystack = checkstring(J, 0);
 const char *needle = js_tostring(J, 1);
 int pos = js_isdefined(J, 2) ? js_tointeger(J, 2) : (int)strlen(haystack);
 int len = strlen(needle);
 int k = 0, last = -1;
 Rune rune;
 while (*haystack && k <= pos) {
  if (!strncmp(haystack, needle, len))
   last = k;
  haystack += chartorune(&rune, haystack);
  ++k;
 }
 js_pushnumber(J, last);
}
