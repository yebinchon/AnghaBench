
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 double INFINITY ;
 double NAN ;
 scalar_t__ jsY_isnewline (char const) ;
 scalar_t__ jsY_iswhite (char const) ;
 double js_stringtofloat (char const*,char**) ;
 int strncmp (char const*,char*,int) ;
 double strtol (char const*,char**,int) ;

double jsV_stringtonumber(js_State *J, const char *s)
{
 char *e;
 double n;
 while (jsY_iswhite(*s) || jsY_isnewline(*s)) ++s;
 if (s[0] == '0' && (s[1] == 'x' || s[1] == 'X') && s[2] != 0)
  n = strtol(s + 2, &e, 16);
 else if (!strncmp(s, "Infinity", 8))
  n = INFINITY, e = (char*)s + 8;
 else if (!strncmp(s, "+Infinity", 9))
  n = INFINITY, e = (char*)s + 9;
 else if (!strncmp(s, "-Infinity", 9))
  n = -INFINITY, e = (char*)s + 9;
 else
  n = js_stringtofloat(s, &e);
 while (jsY_iswhite(*e) || jsY_isnewline(*e)) ++e;
 if (*e) return NAN;
 return n;
}
