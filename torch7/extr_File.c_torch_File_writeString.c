
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int THFile ;


 int LUA_TSTRING ;
 int THFile_writeStringRaw (int *,char const*,size_t) ;
 int luaL_checktype (int *,int,int ) ;
 int * luaT_checkudata (int *,int,char*) ;
 int lua_pushnumber (int *,int ) ;
 char* lua_tolstring (int *,int,size_t*) ;

__attribute__((used)) static int torch_File_writeString(lua_State *L)
{
  THFile *self = luaT_checkudata(L, 1, "torch.File");
  const char *str = ((void*)0);
  size_t size;

  luaL_checktype(L, 2, LUA_TSTRING);
  str = lua_tolstring(L, 2, &size);
  lua_pushnumber(L, THFile_writeStringRaw(self, str, size));
  return 1;
}
