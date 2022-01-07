
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;
typedef scalar_t__ Rune ;


 int UTFmax ;
 char* checkstring (int *,int ) ;
 int js_pushliteral (int *,char*) ;
 int js_pushstring (int *,char*) ;
 scalar_t__ js_runeat (int *,char const*,int) ;
 int js_tointeger (int *,int) ;
 size_t runetochar (char*,scalar_t__*) ;

__attribute__((used)) static void Sp_charAt(js_State *J)
{
 char buf[UTFmax + 1];
 const char *s = checkstring(J, 0);
 int pos = js_tointeger(J, 1);
 Rune rune = js_runeat(J, s, pos);
 if (rune > 0) {
  buf[runetochar(buf, &rune)] = 0;
  js_pushstring(J, buf);
 } else {
  js_pushliteral(J, "");
 }
}
