
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_error (int *,char*,int) ;
 int lua_gettop (int *) ;
 int lua_pushnil (int *) ;
 int ngx_http_lua_ngx_req_header_set_helper (int *) ;

__attribute__((used)) static int
ngx_http_lua_ngx_req_header_clear(lua_State *L)
{
    if (lua_gettop(L) != 1) {
        return luaL_error(L, "expecting one arguments, but seen %d",
                          lua_gettop(L));
    }

    lua_pushnil(L);

    return ngx_http_lua_ngx_req_header_set_helper(L);
}
