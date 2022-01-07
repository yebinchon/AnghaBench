
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_pushstring (int *,char const*) ;
 char* torch_getdefaulttensortype (int *) ;

__attribute__((used)) static int torch_lua_getdefaulttensortype(lua_State *L)
{
  const char* tname = torch_getdefaulttensortype(L);
  if(tname)
  {
    lua_pushstring(L, tname);
    return 1;
  }
  return 0;
}
