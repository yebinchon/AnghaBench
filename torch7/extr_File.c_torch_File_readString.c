
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;
typedef int lua_State ;
typedef int THFile ;


 int THFile_readStringRaw (int *,char const*,char**) ;
 int THFree (char*) ;
 char* luaL_checkstring (int *,int) ;
 int * luaT_checkudata (int *,int,char*) ;
 int lua_pushlstring (int *,char*,int ) ;

__attribute__((used)) static int torch_File_readString(lua_State *L)
{
  THFile *self = luaT_checkudata(L, 1, "torch.File");
  const char *format = luaL_checkstring(L, 2);
  char *str;
  ptrdiff_t size;

  size = THFile_readStringRaw(self, format, &str);
  lua_pushlstring(L, str, size);
  THFree(str);

  return 1;
}
