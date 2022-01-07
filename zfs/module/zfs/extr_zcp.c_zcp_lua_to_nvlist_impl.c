
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int lua_State ;


 int EINVAL ;





 int fnvlist_add_boolean (int *,char const*) ;
 int fnvlist_add_boolean_value (int *,char const*,int ) ;
 int fnvlist_add_int64 (int *,char const*,int ) ;
 int fnvlist_add_nvlist (int *,char const*,int *) ;
 int fnvlist_add_string (int *,char const*,int ) ;
 int fnvlist_free (int *) ;
 int lua_absindex (int *,int) ;
 int lua_checkstack (int *,int) ;
 int lua_pushfstring (int *,char*,int ,char const*) ;
 int lua_pushstring (int *,char*) ;
 int lua_toboolean (int *,int) ;
 int lua_tonumber (int *,int) ;
 int lua_tostring (int *,int) ;
 int lua_type (int *,int) ;
 int lua_typename (int *,int) ;
 int * zcp_table_to_nvlist (int *,int,int) ;

__attribute__((used)) static int
zcp_lua_to_nvlist_impl(lua_State *state, int index, nvlist_t *nvl,
    const char *key, int depth)
{




 if (!lua_checkstack(state, 3)) {
  (void) lua_pushstring(state, "Lua stack overflow");
  return (1);
 }

 index = lua_absindex(state, index);

 switch (lua_type(state, index)) {
 case 131:
  fnvlist_add_boolean(nvl, key);
  break;
 case 132:
  fnvlist_add_boolean_value(nvl, key,
      lua_toboolean(state, index));
  break;
 case 130:
  fnvlist_add_int64(nvl, key, lua_tonumber(state, index));
  break;
 case 129:
  fnvlist_add_string(nvl, key, lua_tostring(state, index));
  break;
 case 128: {
  nvlist_t *value_nvl = zcp_table_to_nvlist(state, index, depth);
  if (value_nvl == ((void*)0))
   return (EINVAL);

  fnvlist_add_nvlist(nvl, key, value_nvl);
  fnvlist_free(value_nvl);
  break;
 }
 default:
  (void) lua_pushfstring(state,
      "Invalid value type '%s' for key '%s'",
      lua_typename(state, lua_type(state, index)), key);
  return (EINVAL);
 }

 return (0);
}
