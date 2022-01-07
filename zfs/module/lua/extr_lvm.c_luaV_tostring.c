
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Number ;
typedef int StkId ;


 int LUAI_MAXNUMBER2STR ;
 int luaS_newlstr (int *,char*,int) ;
 int lua_number2str (char*,int ) ;
 int nvalue (int ) ;
 int setsvalue2s (int *,int ,int ) ;
 int ttisnumber (int ) ;

int luaV_tostring (lua_State *L, StkId obj) {
  if (!ttisnumber(obj))
    return 0;
  else {
    char s[LUAI_MAXNUMBER2STR];
    lua_Number n = nvalue(obj);
    int l = lua_number2str(s, n);
    setsvalue2s(L, obj, luaS_newlstr(L, s, l));
    return 1;
  }
}
