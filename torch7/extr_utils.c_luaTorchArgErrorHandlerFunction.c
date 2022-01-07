
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_argcheck (int *,int ,int,char const*) ;

__attribute__((used)) static void luaTorchArgErrorHandlerFunction(int argNumber, const char *msg, void *data)
{
  lua_State *L = data;
  luaL_argcheck(L, 0, argNumber, msg);
}
