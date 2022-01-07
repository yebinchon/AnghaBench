
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_error (int *,char*) ;
 int lua_createtable (int *,int,int ) ;
 int lua_gettop (int *) ;
 int lua_insert (int *,int) ;
 int lua_rawseti (int *,int,int) ;
 int ngx_http_lua_ngx_location_capture_multi (int *) ;

__attribute__((used)) static int
ngx_http_lua_ngx_location_capture(lua_State *L)
{
    int n;

    n = lua_gettop(L);

    if (n != 1 && n != 2) {
        return luaL_error(L, "expecting one or two arguments");
    }

    lua_createtable(L, n, 0);
    lua_insert(L, 1);
    if (n == 1) {
        lua_rawseti(L, 1, 1);

    } else {
        lua_rawseti(L, 1, 2);
        lua_rawseti(L, 1, 1);
    }

    lua_createtable(L, 1, 0);
    lua_insert(L, 1);
    lua_rawseti(L, 1, 1);

    return ngx_http_lua_ngx_location_capture_multi(L);
}
