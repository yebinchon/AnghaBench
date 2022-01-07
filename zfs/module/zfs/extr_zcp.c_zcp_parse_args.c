
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zcp_arg_t ;
typedef int lua_State ;


 int lua_gettop (int *) ;
 scalar_t__ lua_istable (int *,int) ;
 int zcp_parse_pos_args (int *,char const*,int const*,int const*) ;
 int zcp_parse_table_args (int *,char const*,int const*,int const*) ;

void
zcp_parse_args(lua_State *state, const char *fname, const zcp_arg_t *pargs,
    const zcp_arg_t *kwargs)
{
 if (lua_gettop(state) == 1 && lua_istable(state, 1)) {
  zcp_parse_table_args(state, fname, pargs, kwargs);
 } else {
  zcp_parse_pos_args(state, fname, pargs, kwargs);
 }
}
