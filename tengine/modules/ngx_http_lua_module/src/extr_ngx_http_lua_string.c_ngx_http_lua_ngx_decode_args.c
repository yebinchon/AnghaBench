
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int lua_State ;


 int NGX_HTTP_LUA_MAX_ARGS ;
 int luaL_checkint (int *,int) ;
 scalar_t__ luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*,int) ;
 int lua_createtable (int *,int ,int) ;
 int lua_gettop (int *) ;
 int * lua_newuserdata (int *,size_t) ;
 int lua_pop (int *,int) ;
 int ngx_http_lua_parse_args (int *,int *,int *,int) ;
 int ngx_memcpy (int *,int *,size_t) ;

__attribute__((used)) static int
ngx_http_lua_ngx_decode_args(lua_State *L)
{
    u_char *buf;
    u_char *tmp;
    size_t len = 0;
    int n;
    int max;

    n = lua_gettop(L);

    if (n != 1 && n != 2) {
        return luaL_error(L, "expecting 1 or 2 arguments but seen %d", n);
    }

    buf = (u_char *) luaL_checklstring(L, 1, &len);

    if (n == 2) {
        max = luaL_checkint(L, 2);
        lua_pop(L, 1);

    } else {
        max = NGX_HTTP_LUA_MAX_ARGS;
    }

    tmp = lua_newuserdata(L, len);
    ngx_memcpy(tmp, buf, len);

    lua_createtable(L, 0, 4);

    return ngx_http_lua_parse_args(L, tmp, tmp + len, max);
}
