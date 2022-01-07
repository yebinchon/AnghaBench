
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_TTHREAD ;
 int luaL_checktype (int *,int,int ) ;
 int lua_rotate (int *,int,int) ;
 int timing_yield (int *) ;

__attribute__((used)) static int
lyield_co(lua_State *L) {
 luaL_checktype(L, 1, LUA_TTHREAD);
 lua_rotate(L, 1, -1);

 return timing_yield(L);
}
