
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_error (int *,char*,char const*) ;
 int luaT_pushmetatable (int *,char const*) ;
 scalar_t__ lua_getmetatable (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushvalue (int *,int) ;
 scalar_t__ lua_rawequal (int *,int,int) ;
 int lua_remove (int *,int) ;
 void** lua_touserdata (int *,int) ;

void *luaT_toudata(lua_State *L, int ud, const char *tname)
{
  void **p = lua_touserdata(L, ud);
  if(p != ((void*)0))
  {
    if(!luaT_pushmetatable(L, tname))
      luaL_error(L, "Torch internal problem: cannot find metatable for type <%s>", tname);



    lua_pushvalue(L, (ud < 0 ? ud - 1 : ud));
    while(lua_getmetatable(L, -1))
    {
      lua_remove(L, -2);
      if(lua_rawequal(L, -1, -2))
      {
        lua_pop(L, 2);
        return *p;
      }
    }
    lua_pop(L, 2);
  }
  return ((void*)0);
}
