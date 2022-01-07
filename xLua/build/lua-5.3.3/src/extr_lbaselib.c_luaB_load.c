
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_TFUNCTION ;
 int RESERVEDSLOT ;
 int generic_reader ;
 int load_aux (int *,int,int) ;
 int luaL_checktype (int *,int,int ) ;
 int luaL_loadbufferx (int *,char const*,size_t,char const*,char const*) ;
 char* luaL_optstring (int *,int,char const*) ;
 int lua_isnone (int *,int) ;
 int lua_load (int *,int ,int *,char const*,char const*) ;
 int lua_settop (int *,int ) ;
 char* lua_tolstring (int *,int,size_t*) ;

__attribute__((used)) static int luaB_load (lua_State *L) {
  int status;
  size_t l;
  const char *s = lua_tolstring(L, 1, &l);
  const char *mode = luaL_optstring(L, 3, "bt");
  int env = (!lua_isnone(L, 4) ? 4 : 0);
  if (s != ((void*)0)) {
    const char *chunkname = luaL_optstring(L, 2, s);
    status = luaL_loadbufferx(L, s, l, chunkname, mode);
  }
  else {
    const char *chunkname = luaL_optstring(L, 2, "=(load)");
    luaL_checktype(L, 1, LUA_TFUNCTION);
    lua_settop(L, RESERVEDSLOT);
    status = lua_load(L, generic_reader, ((void*)0), chunkname, mode);
  }
  return load_aux(L, status, env);
}
