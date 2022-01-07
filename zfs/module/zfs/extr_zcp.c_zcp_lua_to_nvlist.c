
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int lua_State ;


 int lua_error (int *) ;
 scalar_t__ zcp_lua_to_nvlist_impl (int *,int,int *,char const*,int ) ;

__attribute__((used)) static void
zcp_lua_to_nvlist(lua_State *state, int index, nvlist_t *nvl, const char *key)
{





 if (zcp_lua_to_nvlist_impl(state, index, nvl, key, 0) != 0)
  (void) lua_error(state);
}
