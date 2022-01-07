
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Debug ;


 int checkstack (int *,int *,int) ;
 int * getthread (int *,int*) ;
 int luaL_argerror (int *,int,char*) ;
 int luaL_checkany (int *,int) ;
 scalar_t__ luaL_checkinteger (int *,int) ;
 int lua_getstack (int *,int,int *) ;
 int lua_pop (int *,int) ;
 int lua_pushstring (int *,char const*) ;
 char* lua_setlocal (int *,int *,int) ;
 int lua_settop (int *,int) ;
 int lua_xmove (int *,int *,int) ;

__attribute__((used)) static int db_setlocal (lua_State *L) {
  int arg;
  const char *name;
  lua_State *L1 = getthread(L, &arg);
  lua_Debug ar;
  int level = (int)luaL_checkinteger(L, arg + 1);
  int nvar = (int)luaL_checkinteger(L, arg + 2);
  if (!lua_getstack(L1, level, &ar))
    return luaL_argerror(L, arg+1, "level out of range");
  luaL_checkany(L, arg+3);
  lua_settop(L, arg+3);
  checkstack(L, L1, 1);
  lua_xmove(L, L1, 1);
  name = lua_setlocal(L1, &ar, nvar);
  if (name == ((void*)0))
    lua_pop(L1, 1);
  lua_pushstring(L, name);
  return 1;
}
