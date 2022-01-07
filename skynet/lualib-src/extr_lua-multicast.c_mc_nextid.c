
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int lua_State ;


 scalar_t__ luaL_checkinteger (int *,int) ;
 int lua_pushinteger (int *,scalar_t__) ;

__attribute__((used)) static int
mc_nextid(lua_State *L) {
 uint32_t id = (uint32_t)luaL_checkinteger(L, 1);
 id += 256;
 lua_pushinteger(L, (uint32_t)id);

 return 1;
}
