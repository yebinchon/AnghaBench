
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 int lua_getfield (int *,int,char*) ;
 int lua_getglobal (int *,char*) ;
 scalar_t__ lua_getmetatable (int *,int) ;
 scalar_t__ lua_isstring (int *,int) ;
 scalar_t__ lua_istable (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushstring (int *,char*) ;
 int lua_rawget (int *,int) ;
 char* lua_tostring (int *,int) ;

const char* torch_getdefaulttensortype(lua_State *L)
{
  lua_getglobal(L, "torch");
  if(lua_istable(L, -1))
  {
    lua_getfield(L, -1, "Tensor");
    if(lua_istable(L, -1))
    {
      if(lua_getmetatable(L, -1))
      {
        lua_pushstring(L, "__index");
        lua_rawget(L, -2);
        if(lua_istable(L, -1))
        {
          lua_rawget(L, LUA_REGISTRYINDEX);
          if(lua_isstring(L, -1))
          {
            const char *tname = lua_tostring(L, -1);
            lua_pop(L, 4);
            return tname;
          }
        }
        else
        {
          lua_pop(L, 4);
          return ((void*)0);
        }
      }
      else
      {
        lua_pop(L, 2);
        return ((void*)0);
      }
    }
    else
    {
      lua_pop(L, 2);
      return ((void*)0);
    }
  }
  else
  {
    lua_pop(L, 1);
    return ((void*)0);
  }
  return ((void*)0);
}
