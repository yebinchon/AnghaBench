
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_error (int *,char*,char const*) ;
 int luaT_pushmetatable (int *,char const*) ;
 void** lua_newuserdata (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_setmetatable (int *,int) ;

void luaT_pushudata(lua_State *L, void *udata, const char *tname)
{
  if(udata)
  {
    void **udata_p = lua_newuserdata(L, sizeof(void*));
    *udata_p = udata;
    if(!luaT_pushmetatable(L, tname))
      luaL_error(L, "Torch internal problem: cannot find metatable for type <%s>", tname);
    lua_setmetatable(L, -2);
  }
  else
    lua_pushnil(L);
}
