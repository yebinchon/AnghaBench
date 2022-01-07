
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int incomplete (int *,int) ;
 int luaL_loadbuffer (int *,int ,int ,char*) ;
 int lua_concat (int *,int) ;
 int lua_insert (int *,int) ;
 int lua_pushliteral (int *,char*) ;
 int lua_remove (int *,int) ;
 int lua_settop (int *,int ) ;
 int lua_strlen (int *,int) ;
 int lua_tostring (int *,int) ;
 int pushline (int *,int) ;

__attribute__((used)) static int loadline(lua_State *L)
{
  int status;
  lua_settop(L, 0);
  if (!pushline(L, 1))
    return -1;
  for (;;) {
    status = luaL_loadbuffer(L, lua_tostring(L, 1), lua_strlen(L, 1), "=stdin");
    if (!incomplete(L, status)) break;
    if (!pushline(L, 0))
      return -1;
    lua_pushliteral(L, "\n");
    lua_insert(L, -2);
    lua_concat(L, 3);
  }
  lua_remove(L, 1);
  return status;
}
