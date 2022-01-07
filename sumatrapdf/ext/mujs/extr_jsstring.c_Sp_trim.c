
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 char* checkstring (int *,int ) ;
 scalar_t__ istrim (char const) ;
 int js_pushlstring (int *,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static void Sp_trim(js_State *J)
{
 const char *s, *e;
 s = checkstring(J, 0);
 while (istrim(*s))
  ++s;
 e = s + strlen(s);
 while (e > s && istrim(e[-1]))
  --e;
 js_pushlstring(J, s, e - s);
}
