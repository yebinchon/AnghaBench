
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int * lua_Hook ;


 int HOOKKEY ;
 int LUA_REGISTRYINDEX ;
 int LUA_TFUNCTION ;
 scalar_t__ LUA_TNIL ;
 int * getthread (int *,int*) ;
 int * hookf ;
 char* luaL_checkstring (int *,int) ;
 int luaL_checktype (int *,int,int ) ;
 scalar_t__ luaL_optinteger (int *,int,int ) ;
 int lua_createtable (int *,int ,int) ;
 scalar_t__ lua_isnoneornil (int *,int) ;
 int lua_pushstring (int *,char*) ;
 int lua_pushthread (int *) ;
 int lua_pushvalue (int *,int) ;
 scalar_t__ lua_rawgetp (int *,int ,int *) ;
 int lua_rawset (int *,int) ;
 int lua_rawsetp (int *,int ,int *) ;
 int lua_setfield (int *,int,char*) ;
 int lua_sethook (int *,int *,int,int) ;
 int lua_setmetatable (int *,int) ;
 int lua_settop (int *,int) ;
 int lua_xmove (int *,int *,int) ;
 int makemask (char const*,int) ;

__attribute__((used)) static int db_sethook (lua_State *L) {
  int arg, mask, count;
  lua_Hook func;
  lua_State *L1 = getthread(L, &arg);
  if (lua_isnoneornil(L, arg+1)) {
    lua_settop(L, arg+1);
    func = ((void*)0); mask = 0; count = 0;
  }
  else {
    const char *smask = luaL_checkstring(L, arg+2);
    luaL_checktype(L, arg+1, LUA_TFUNCTION);
    count = (int)luaL_optinteger(L, arg + 3, 0);
    func = hookf; mask = makemask(smask, count);
  }
  if (lua_rawgetp(L, LUA_REGISTRYINDEX, &HOOKKEY) == LUA_TNIL) {
    lua_createtable(L, 0, 2);
    lua_pushvalue(L, -1);
    lua_rawsetp(L, LUA_REGISTRYINDEX, &HOOKKEY);
    lua_pushstring(L, "k");
    lua_setfield(L, -2, "__mode");
    lua_pushvalue(L, -1);
    lua_setmetatable(L, -2);
  }
  lua_pushthread(L1); lua_xmove(L1, L, 1);
  lua_pushvalue(L, arg + 1);
  lua_rawset(L, -3);
  lua_sethook(L1, func, mask, count);
  return 0;
}
