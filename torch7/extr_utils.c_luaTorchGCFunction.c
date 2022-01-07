
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_GCCOLLECT ;
 int lua_gc (int *,int ,int ) ;

__attribute__((used)) static void luaTorchGCFunction(void *data)
{
  lua_State *L = data;
  lua_gc(L, LUA_GCCOLLECT, 0);
}
