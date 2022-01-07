
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int json_config_t ;


 int luaL_error (int *,char*) ;
 int * lua_touserdata (int *,int ) ;
 int lua_upvalueindex (int) ;

__attribute__((used)) static json_config_t *json_fetch_config(lua_State *l)
{
    json_config_t *cfg;

    cfg = lua_touserdata(l, lua_upvalueindex(1));
    if (!cfg)
        luaL_error(l, "BUG: Unable to fetch CJSON configuration");

    return cfg;
}
