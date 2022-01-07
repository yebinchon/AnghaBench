
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_TTHREAD ;
 int fprintf (int ,char*,int *) ;
 double get_time () ;
 int luaL_checktype (int *,int,int ) ;
 int luaL_error (int *,char*,int ) ;
 scalar_t__ lua_gettop (int *) ;
 int lua_isnil (int *,int) ;
 int lua_pushnumber (int *,double) ;
 int lua_pushthread (int *) ;
 int lua_pushvalue (int *,int) ;
 int lua_rawget (int *,int ) ;
 int lua_rawset (int *,int ) ;
 int lua_settop (int *,int) ;
 int lua_topointer (int *,int) ;
 int lua_upvalueindex (int) ;
 int stderr ;

__attribute__((used)) static int
lstart(lua_State *L) {
 if (lua_gettop(L) != 0) {
  lua_settop(L,1);
  luaL_checktype(L, 1, LUA_TTHREAD);
 } else {
  lua_pushthread(L);
 }
 lua_pushvalue(L, 1);
 lua_rawget(L, lua_upvalueindex(2));
 if (!lua_isnil(L, -1)) {
  return luaL_error(L, "Thread %p start profile more than once", lua_topointer(L, 1));
 }
 lua_pushvalue(L, 1);
 lua_pushnumber(L, 0);
 lua_rawset(L, lua_upvalueindex(2));

 lua_pushvalue(L, 1);
 double ti = get_time();



 lua_pushnumber(L, ti);
 lua_rawset(L, lua_upvalueindex(1));

 return 0;
}
