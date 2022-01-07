
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int CJSON_MODNAME ;
 int lua_cjson_new (int *) ;
 int lua_pushvalue (int *,int) ;
 int lua_setglobal (int *,int ) ;

int luaopen_cjson(lua_State *l)
{
    lua_cjson_new(l);
    return 1;
}
