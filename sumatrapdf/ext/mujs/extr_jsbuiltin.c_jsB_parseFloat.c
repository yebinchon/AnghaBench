
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 double INFINITY ;
 double NAN ;
 scalar_t__ jsY_isnewline (char const) ;
 scalar_t__ jsY_iswhite (char const) ;
 int js_pushnumber (int *,double) ;
 double js_stringtofloat (char const*,char**) ;
 char* js_tostring (int *,int) ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static void jsB_parseFloat(js_State *J)
{
 const char *s = js_tostring(J, 1);
 char *e;
 double n;

 while (jsY_iswhite(*s) || jsY_isnewline(*s)) ++s;
 if (!strncmp(s, "Infinity", 8))
  js_pushnumber(J, INFINITY);
 else if (!strncmp(s, "+Infinity", 9))
  js_pushnumber(J, INFINITY);
 else if (!strncmp(s, "-Infinity", 9))
  js_pushnumber(J, -INFINITY);
 else {
  n = js_stringtofloat(s, &e);
  if (e == s)
   js_pushnumber(J, NAN);
  else
   js_pushnumber(J, n);
 }
}
