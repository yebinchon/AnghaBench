
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;
typedef int Rune ;


 int chartorune (int *,char const*) ;
 char* checkstring (int *,int ) ;
 scalar_t__ js_isdefined (int *,int) ;
 int js_newarray (int *) ;
 int js_pushlstring (int *,char const*,int) ;
 int js_pushstring (int *,char const*) ;
 int js_setindex (int *,int,int) ;
 int js_tointeger (int *,int) ;
 char* js_tostring (int *,int) ;
 int strlen (char const*) ;
 char* strstr (char const*,char const*) ;

__attribute__((used)) static void Sp_split_string(js_State *J)
{
 const char *str = checkstring(J, 0);
 const char *sep = js_tostring(J, 1);
 int limit = js_isdefined(J, 2) ? js_tointeger(J, 2) : 1 << 30;
 int i, n;

 js_newarray(J);

 n = strlen(sep);


 if (n == 0) {
  Rune rune;
  for (i = 0; *str && i < limit; ++i) {
   n = chartorune(&rune, str);
   js_pushlstring(J, str, n);
   js_setindex(J, -2, i);
   str += n;
  }
  return;
 }

 for (i = 0; str && i < limit; ++i) {
  const char *s = strstr(str, sep);
  if (s) {
   js_pushlstring(J, str, s-str);
   js_setindex(J, -2, i);
   str = s + n;
  } else {
   js_pushstring(J, str);
   js_setindex(J, -2, i);
   str = ((void*)0);
  }
 }
}
