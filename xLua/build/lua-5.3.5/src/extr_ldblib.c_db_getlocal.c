
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Debug ;


 int checkstack (int *,int *,int) ;
 int * getthread (int *,int*) ;
 int luaL_argerror (int *,int,char*) ;
 scalar_t__ luaL_checkinteger (int *,int) ;
 char const* lua_getlocal (int *,int *,int) ;
 int lua_getstack (int *,int,int *) ;
 scalar_t__ lua_isfunction (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char const*) ;
 int lua_pushvalue (int *,int) ;
 int lua_rotate (int *,int,int) ;
 int lua_xmove (int *,int *,int) ;

__attribute__((used)) static int db_getlocal (lua_State *L) {
  int arg;
  lua_State *L1 = getthread(L, &arg);
  lua_Debug ar;
  const char *name;
  int nvar = (int)luaL_checkinteger(L, arg + 2);
  if (lua_isfunction(L, arg + 1)) {
    lua_pushvalue(L, arg + 1);
    lua_pushstring(L, lua_getlocal(L, ((void*)0), nvar));
    return 1;
  }
  else {
    int level = (int)luaL_checkinteger(L, arg + 1);
    if (!lua_getstack(L1, level, &ar))
      return luaL_argerror(L, arg+1, "level out of range");
    checkstack(L, L1, 1);
    name = lua_getlocal(L1, &ar, nvar);
    if (name) {
      lua_xmove(L1, L, 1);
      lua_pushstring(L, name);
      lua_rotate(L, -2, 1);
      return 2;
    }
    else {
      lua_pushnil(L);
      return 1;
    }
  }
}
