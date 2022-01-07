
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 scalar_t__ LUA_TNIL ;
 int luaL_checklstring (int *,int,size_t*) ;
 scalar_t__ lua_geti (int *,int,int) ;
 int lua_pop (int *,int) ;

__attribute__((used)) static size_t
count_size(lua_State *L, int index) {
 size_t tlen = 0;
 int i;
 for (i=1;lua_geti(L, index, i) != LUA_TNIL; ++i) {
  size_t len;
  luaL_checklstring(L, -1, &len);
  tlen += len;
  lua_pop(L,1);
 }
 lua_pop(L,1);
 return tlen;
}
