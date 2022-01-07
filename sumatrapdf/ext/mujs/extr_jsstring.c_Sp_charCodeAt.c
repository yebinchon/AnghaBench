
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;
typedef scalar_t__ Rune ;


 scalar_t__ NAN ;
 char* checkstring (int *,int ) ;
 int js_pushnumber (int *,scalar_t__) ;
 scalar_t__ js_runeat (int *,char const*,int) ;
 int js_tointeger (int *,int) ;

__attribute__((used)) static void Sp_charCodeAt(js_State *J)
{
 const char *s = checkstring(J, 0);
 int pos = js_tointeger(J, 1);
 Rune rune = js_runeat(J, s, pos);
 if (rune > 0)
  js_pushnumber(J, rune);
 else
  js_pushnumber(J, NAN);
}
