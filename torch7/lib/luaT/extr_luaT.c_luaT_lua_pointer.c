
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_argcheck (int *,int ,int,char*) ;
 int luaL_error (int *,char*) ;
 scalar_t__ luaT_iscdata (int *,int) ;
 int luaT_pushpointer (int *,char const*) ;
 int luaT_typename (int *,int) ;
 scalar_t__ lua_isfunction (int *,int) ;
 scalar_t__ lua_isstring (int *,int) ;
 scalar_t__ lua_istable (int *,int) ;
 scalar_t__ lua_isthread (int *,int) ;
 scalar_t__ lua_isuserdata (int *,int) ;
 void* lua_topointer (int *,int) ;
 char* lua_tostring (int *,int) ;
 void** lua_touserdata (int *,int) ;
 int lua_type (int *,int) ;

int luaT_lua_pointer(lua_State *L)
{
  if(lua_type(L, 1) == 10)
  {


    const void* ptr = *((void**)lua_topointer(L, 1));
    luaT_pushpointer(L, ptr);
    return 1;
  }
  else if (luaT_iscdata(L, 1))
  {
    void** ptr = (void**)lua_touserdata(L, 1);
    luaT_pushpointer(L, ptr[4]);
    return 1;
  }
  else if(lua_isuserdata(L, 1))
  {
    void **ptr;
    luaL_argcheck(L, luaT_typename(L, 1), 1, "Torch object expected");
    ptr = lua_touserdata(L, 1);
    luaT_pushpointer(L, *ptr);
    return 1;
  }
  else if(lua_istable(L, 1) || lua_isthread(L, 1) || lua_isfunction(L, 1))
  {
    const void* ptr = lua_topointer(L, 1);
    luaT_pushpointer(L, ptr);
    return 1;
  }
  else if(lua_isstring(L, 1))
  {
    const char* ptr = lua_tostring(L, 1);
    luaT_pushpointer(L, ptr);
    return 1;
  }
  else
    luaL_error(L, "Torch object, table, thread, cdata or function expected");

  return 0;
}
