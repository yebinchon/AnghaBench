
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int za_lua_type; int * za_name; } ;
typedef TYPE_1__ zcp_arg_t ;
typedef int lua_State ;


 int LUA_TNIL ;
 int lua_getfield (int *,int,int *) ;
 int lua_gettable (int *,int) ;
 scalar_t__ lua_isnumber (int *,int) ;
 scalar_t__ lua_isstring (int *,int) ;
 scalar_t__ lua_next (int *,int) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_remove (int *,int) ;
 int lua_setfield (int *,int,int *) ;
 int lua_settable (int *,int) ;
 scalar_t__ lua_tointeger (int *,int) ;
 int lua_tostring (int *,int) ;
 int lua_type (int *,int) ;
 int lua_typename (int *,int) ;
 int panic (char*) ;
 int zcp_args_error (int *,char const*,TYPE_1__ const*,TYPE_1__ const*,char*,...) ;

__attribute__((used)) static void
zcp_parse_table_args(lua_State *state, const char *fname,
    const zcp_arg_t *pargs, const zcp_arg_t *kwargs)
{
 int i;
 int type;

 for (i = 0; pargs[i].za_name != ((void*)0); i++) {




  lua_pushinteger(state, i + 1);
  lua_gettable(state, 1);

  type = lua_type(state, -1);
  if (type == LUA_TNIL) {
   zcp_args_error(state, fname, pargs, kwargs,
       "too few arguments");
   panic("unreachable code");
  } else if (type != pargs[i].za_lua_type) {
   zcp_args_error(state, fname, pargs, kwargs,
       "arg %d wrong type (is '%s', expected '%s')",
       i + 1, lua_typename(state, type),
       lua_typename(state, pargs[i].za_lua_type));
   panic("unreachable code");
  }




  lua_pushinteger(state, i + 1);
  lua_pushnil(state);
  lua_settable(state, 1);
 }

 for (i = 0; kwargs[i].za_name != ((void*)0); i++) {





  lua_getfield(state, 1, kwargs[i].za_name);

  type = lua_type(state, -1);
  if (type != LUA_TNIL && type != kwargs[i].za_lua_type) {
   zcp_args_error(state, fname, pargs, kwargs,
       "kwarg '%s' wrong type (is '%s', expected '%s')",
       kwargs[i].za_name, lua_typename(state, type),
       lua_typename(state, kwargs[i].za_lua_type));
   panic("unreachable code");
  }




  lua_pushnil(state);
  lua_setfield(state, 1, kwargs[i].za_name);
 }





 lua_pushnil(state);
 if (lua_next(state, 1)) {
  if (lua_isnumber(state, -2) && lua_tointeger(state, -2) > 0) {
   zcp_args_error(state, fname, pargs, kwargs,
       "too many positional arguments");
  } else if (lua_isstring(state, -2)) {
   zcp_args_error(state, fname, pargs, kwargs,
       "invalid kwarg '%s'", lua_tostring(state, -2));
  } else {
   zcp_args_error(state, fname, pargs, kwargs,
       "kwarg keys must be strings");
  }
  panic("unreachable code");
 }

 lua_remove(state, 1);
}
