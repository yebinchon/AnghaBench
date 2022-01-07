
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int CO_SUS ;
 int LUA_YIELD ;
 int costatus (int *,int *) ;
 int luaL_error (int *,char*) ;
 int lua_checkstack (int *,int) ;
 int lua_gettop (int *) ;
 int lua_pushfstring (int *,char*,int ) ;
 int lua_resume (int *,int) ;
 int lua_setlevel (int *,int *) ;
 int lua_xmove (int *,int *,int) ;
 int * statnames ;

__attribute__((used)) static int auxresume (lua_State *L, lua_State *co, int narg) {
  int status = costatus(L, co);
  if (!lua_checkstack(co, narg))
    luaL_error(L, "too many arguments to resume");
  if (status != CO_SUS) {
    lua_pushfstring(L, "cannot resume %s coroutine", statnames[status]);
    return -1;
  }
  lua_xmove(L, co, narg);
  lua_setlevel(L, co);
  status = lua_resume(co, narg);
  if (status == 0 || status == LUA_YIELD) {
    int nres = lua_gettop(co);
    if (!lua_checkstack(L, nres + 1))
      luaL_error(L, "too many results to resume");
    lua_xmove(co, L, nres);
    return nres;
  }
  else {
    lua_xmove(co, L, 1);
    return -1;
  }
}
