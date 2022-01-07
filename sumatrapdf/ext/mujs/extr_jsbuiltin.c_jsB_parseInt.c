
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 double NAN ;
 scalar_t__ jsY_isnewline (char const) ;
 scalar_t__ jsY_iswhite (char const) ;
 scalar_t__ js_isdefined (int *,int) ;
 int js_pushnumber (int *,double) ;
 int js_tointeger (int *,int) ;
 char* js_tostring (int *,int) ;
 double strtol (char const*,char**,int) ;

__attribute__((used)) static void jsB_parseInt(js_State *J)
{
 const char *s = js_tostring(J, 1);
 int radix = js_isdefined(J, 2) ? js_tointeger(J, 2) : 10;
 double sign = 1;
 double n;
 char *e;

 while (jsY_iswhite(*s) || jsY_isnewline(*s))
  ++s;
 if (*s == '-') {
  ++s;
  sign = -1;
 } else if (*s == '+') {
  ++s;
 }
 if (radix == 0) {
  radix = 10;
  if (s[0] == '0' && (s[1] == 'x' || s[1] == 'X')) {
   s += 2;
   radix = 16;
  }
 } else if (radix < 2 || radix > 36) {
  js_pushnumber(J, NAN);
  return;
 }
 n = strtol(s, &e, radix);
 if (s == e)
  js_pushnumber(J, NAN);
 else
  js_pushnumber(J, n * sign);
}
