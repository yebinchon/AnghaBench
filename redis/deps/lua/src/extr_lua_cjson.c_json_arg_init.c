
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int json_config_t ;


 int * json_fetch_config (int *) ;
 int luaL_argcheck (int *,int,int,char*) ;
 int lua_gettop (int *) ;
 int lua_pushnil (int *) ;

__attribute__((used)) static json_config_t *json_arg_init(lua_State *l, int args)
{
    luaL_argcheck(l, lua_gettop(l) <= args, args + 1,
                  "found too many arguments");

    while (lua_gettop(l) < args)
        lua_pushnil(l);

    return json_fetch_config(l);
}
