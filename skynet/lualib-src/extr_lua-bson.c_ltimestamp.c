
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int lua_State ;
typedef int luaL_Buffer ;
typedef int inc ;
typedef int i ;
typedef int d ;


 int BSON_TIMESTAMP ;
 int luaL_addchar (int *,int ) ;
 int luaL_addlstring (int *,char const*,int) ;
 int luaL_buffinit (int *,int *) ;
 int luaL_checkinteger (int *,int) ;
 int luaL_pushresult (int *) ;
 scalar_t__ lua_isnoneornil (int *,int) ;
 int lua_tointeger (int *,int) ;

__attribute__((used)) static int
ltimestamp(lua_State *L) {
 int d = luaL_checkinteger(L,1);
 luaL_Buffer b;
 luaL_buffinit(L, &b);
 luaL_addchar(&b, 0);
 luaL_addchar(&b, BSON_TIMESTAMP);
 if (lua_isnoneornil(L,2)) {
  static uint32_t inc = 0;
  luaL_addlstring(&b, (const char *)&inc, sizeof(inc));
  ++inc;
 } else {
  uint32_t i = (uint32_t)lua_tointeger(L,2);
  luaL_addlstring(&b, (const char *)&i, sizeof(i));
 }
 luaL_addlstring(&b, (const char *)&d, sizeof(d));
 luaL_pushresult(&b);

 return 1;
}
