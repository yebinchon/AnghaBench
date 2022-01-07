
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int IO_OUTPUT ;
 int LUA_REGISTRYINDEX ;
 int aux_close (int *) ;
 int lua_getfield (int *,int ,int ) ;
 scalar_t__ lua_isnone (int *,int) ;
 int tofile (int *) ;

__attribute__((used)) static int io_close (lua_State *L) {
  if (lua_isnone(L, 1))
    lua_getfield(L, LUA_REGISTRYINDEX, IO_OUTPUT);
  tofile(L);
  return aux_close(L);
}
