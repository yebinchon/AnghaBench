
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int lua_State ;


 scalar_t__ lua_touserdata (int *,int) ;
 int zcp_lua_to_nvlist (int *,int,int *,char const*) ;

__attribute__((used)) static int
zcp_lua_to_nvlist_helper(lua_State *state)
{
 nvlist_t *nv = (nvlist_t *)lua_touserdata(state, 2);
 const char *key = (const char *)lua_touserdata(state, 1);
 zcp_lua_to_nvlist(state, 3, nv, key);
 return (0);
}
