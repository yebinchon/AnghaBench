
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_error (int *,char const*) ;

__attribute__((used)) static void luaTorchErrorHandlerFunction(const char *msg, void *data)
{
  lua_State *L = data;
  luaL_error(L, msg);
}
