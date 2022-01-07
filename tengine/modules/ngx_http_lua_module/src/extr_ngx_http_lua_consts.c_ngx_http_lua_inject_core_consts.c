
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int NGX_AGAIN ;
 int NGX_DECLINED ;
 int NGX_DONE ;
 int NGX_ERROR ;
 int NGX_OK ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushlightuserdata (int *,int *) ;
 int lua_setfield (int *,int,char*) ;

void
ngx_http_lua_inject_core_consts(lua_State *L)
{

    lua_pushinteger(L, NGX_OK);
    lua_setfield(L, -2, "OK");

    lua_pushinteger(L, NGX_AGAIN);
    lua_setfield(L, -2, "AGAIN");

    lua_pushinteger(L, NGX_DONE);
    lua_setfield(L, -2, "DONE");

    lua_pushinteger(L, NGX_DECLINED);
    lua_setfield(L, -2, "DECLINED");

    lua_pushinteger(L, NGX_ERROR);
    lua_setfield(L, -2, "ERROR");

    lua_pushlightuserdata(L, ((void*)0));
    lua_setfield(L, -2, "null");

}
