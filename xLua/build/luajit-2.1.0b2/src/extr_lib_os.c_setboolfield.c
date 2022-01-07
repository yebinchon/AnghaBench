
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_pushboolean (int *,int) ;
 int lua_setfield (int *,int,char const*) ;

__attribute__((used)) static void setboolfield(lua_State *L, const char *key, int value)
{
  if (value < 0)
    return;
  lua_pushboolean(L, value);
  lua_setfield(L, -2, key);
}
