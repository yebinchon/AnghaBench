
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int lua_State ;


 int NGX_ESCAPE_URI_COMPONENT ;
 scalar_t__ luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*) ;
 int lua_gettop (int *) ;
 scalar_t__ lua_isnil (int *,int) ;
 int * lua_newuserdata (int *,size_t) ;
 int lua_pushliteral (int *,char*) ;
 int lua_pushlstring (int *,char*,size_t) ;
 int ngx_http_lua_escape_uri (int *,int *,size_t,int ) ;

__attribute__((used)) static int
ngx_http_lua_ngx_escape_uri(lua_State *L)
{
    size_t len, dlen;
    uintptr_t escape;
    u_char *src, *dst;

    if (lua_gettop(L) != 1) {
        return luaL_error(L, "expecting one argument");
    }

    if (lua_isnil(L, 1)) {
        lua_pushliteral(L, "");
        return 1;
    }

    src = (u_char *) luaL_checklstring(L, 1, &len);

    if (len == 0) {
        return 1;
    }

    escape = 2 * ngx_http_lua_escape_uri(((void*)0), src, len,
                                         NGX_ESCAPE_URI_COMPONENT);

    if (escape) {
        dlen = escape + len;
        dst = lua_newuserdata(L, dlen);
        ngx_http_lua_escape_uri(dst, src, len, NGX_ESCAPE_URI_COMPONENT);
        lua_pushlstring(L, (char *) dst, dlen);
    }

    return 1;
}
