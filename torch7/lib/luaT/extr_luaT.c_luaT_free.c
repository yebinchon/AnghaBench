
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int free (void*) ;

void luaT_free(lua_State *L, void *ptr)
{
  free(ptr);
}
