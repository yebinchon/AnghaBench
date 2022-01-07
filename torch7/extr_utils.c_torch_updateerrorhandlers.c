
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int THSetArgErrorHandler (int ,int *) ;
 int THSetErrorHandler (int ,int *) ;
 int luaTorchArgErrorHandlerFunction ;
 int luaTorchErrorHandlerFunction ;

__attribute__((used)) static int torch_updateerrorhandlers(lua_State *L)
{
  THSetErrorHandler(luaTorchErrorHandlerFunction, L);
  THSetArgErrorHandler(luaTorchArgErrorHandlerFunction, L);
  return 0;
}
