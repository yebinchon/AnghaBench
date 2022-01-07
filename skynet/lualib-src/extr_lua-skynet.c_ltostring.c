
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_checkinteger (int *,int) ;
 scalar_t__ lua_isnoneornil (int *,int) ;
 int lua_pushlstring (int *,char*,int) ;
 char* lua_touserdata (int *,int) ;

__attribute__((used)) static int
ltostring(lua_State *L) {
 if (lua_isnoneornil(L,1)) {
  return 0;
 }
 char * msg = lua_touserdata(L,1);
 int sz = luaL_checkinteger(L,2);
 lua_pushlstring(L,msg,sz);
 return 1;
}
