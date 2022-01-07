
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 scalar_t__ LUA_TNUMBER ;
 int LUA_TTHREAD ;
 double diff_time (double) ;
 int fprintf (int ,char*,int ,double,double) ;
 int luaL_checktype (int *,int,int ) ;
 int luaL_error (int *,char*) ;
 scalar_t__ lua_gettop (int *) ;
 int lua_pushnil (int *) ;
 int lua_pushnumber (int *,double) ;
 int lua_pushthread (int *) ;
 int lua_pushvalue (int *,int) ;
 int lua_rawget (int *,int ) ;
 int lua_rawset (int *,int ) ;
 int lua_settop (int *,int) ;
 double lua_tonumber (int *,int) ;
 int lua_tothread (int *,int) ;
 scalar_t__ lua_type (int *,int) ;
 int lua_upvalueindex (int) ;
 int stderr ;

__attribute__((used)) static int
lstop(lua_State *L) {
 if (lua_gettop(L) != 0) {
  lua_settop(L,1);
  luaL_checktype(L, 1, LUA_TTHREAD);
 } else {
  lua_pushthread(L);
 }
 lua_pushvalue(L, 1);
 lua_rawget(L, lua_upvalueindex(1));
 if (lua_type(L, -1) != LUA_TNUMBER) {
  return luaL_error(L, "Call profile.start() before profile.stop()");
 }
 double ti = diff_time(lua_tonumber(L, -1));
 lua_pushvalue(L, 1);
 lua_rawget(L, lua_upvalueindex(2));
 double total_time = lua_tonumber(L, -1);

 lua_pushvalue(L, 1);
 lua_pushnil(L);
 lua_rawset(L, lua_upvalueindex(1));

 lua_pushvalue(L, 1);
 lua_pushnil(L);
 lua_rawset(L, lua_upvalueindex(2));

 total_time += ti;
 lua_pushnumber(L, total_time);




 return 1;
}
