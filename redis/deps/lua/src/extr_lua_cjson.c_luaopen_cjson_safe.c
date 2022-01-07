
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_cjson_safe_new (int *) ;

int luaopen_cjson_safe(lua_State *l)
{
    lua_cjson_safe_new(l);


    return 1;
}
