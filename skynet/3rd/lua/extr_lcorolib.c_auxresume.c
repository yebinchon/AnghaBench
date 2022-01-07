
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_OK ;
 int LUA_YIELD ;
 int lua_checkstack (int *,int) ;
 int lua_gettop (int *) ;
 int lua_pop (int *,int) ;
 int lua_pushliteral (int *,char*) ;
 int lua_resume (int *,int *,int) ;
 int lua_status (int *) ;
 int lua_xmove (int *,int *,int) ;

__attribute__((used)) static int auxresume (lua_State *L, lua_State *co, int narg) {
  int status;
  if (!lua_checkstack(co, narg)) {
    lua_pushliteral(L, "too many arguments to resume");
    return -1;
  }
  if (lua_status(co) == LUA_OK && lua_gettop(co) == 0) {
    lua_pushliteral(L, "cannot resume dead coroutine");
    return -1;
  }
  lua_xmove(L, co, narg);
  status = lua_resume(co, L, narg);
  if (status == LUA_OK || status == LUA_YIELD) {
    int nres = lua_gettop(co);
    if (!lua_checkstack(L, nres + 1)) {
      lua_pop(co, nres);
      lua_pushliteral(L, "too many results to resume");
      return -1;
    }
    lua_xmove(co, L, nres);
    return nres;
  }
  else {
    lua_xmove(co, L, 1);
    return -1;
  }
}
