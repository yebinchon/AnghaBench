
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int THSetGCHandler (int *,int *) ;
 int luaT_checkboolean (int *,int) ;
 int * luaTorchGCFunction ;
 int lua_getglobal (int *,char*) ;
 int lua_pushboolean (int *,int) ;
 int lua_setfield (int *,int,char*) ;

__attribute__((used)) static int torch_setheaptracking(lua_State *L)
{
  int enabled = luaT_checkboolean(L,1);
  lua_getglobal(L, "torch");
  lua_pushboolean(L, enabled);
  lua_setfield(L, -2, "_heaptracking");
  if(enabled) {
    THSetGCHandler(luaTorchGCFunction, L);
  } else {
    THSetGCHandler(((void*)0), ((void*)0));
  }
  return 0;
}
