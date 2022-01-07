
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int lua_State ;


 int NGX_ERROR ;
 scalar_t__ luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*) ;
 int lua_gettop (int *) ;
 int * lua_newuserdata (int *,size_t) ;
 int lua_pushlstring (int *,char*,int) ;
 int * ngx_copy (int *,int *,size_t) ;
 size_t ngx_http_lua_ngx_escape_sql_str (int *,int *,size_t) ;

__attribute__((used)) static int
ngx_http_lua_ngx_quote_sql_str(lua_State *L)
{
    size_t len, dlen, escape;
    u_char *p;
    u_char *src, *dst;

    if (lua_gettop(L) != 1) {
        return luaL_error(L, "expecting one argument");
    }

    src = (u_char *) luaL_checklstring(L, 1, &len);

    if (len == 0) {
        dst = (u_char *) "''";
        dlen = sizeof("''") - 1;
        lua_pushlstring(L, (char *) dst, dlen);
        return 1;
    }

    escape = ngx_http_lua_ngx_escape_sql_str(((void*)0), src, len);

    dlen = sizeof("''") - 1 + len + escape;

    p = lua_newuserdata(L, dlen);

    dst = p;

    *p++ = '\'';

    if (escape == 0) {
        p = ngx_copy(p, src, len);

    } else {
        p = (u_char *) ngx_http_lua_ngx_escape_sql_str(p, src, len);
    }

    *p++ = '\'';

    if (p != dst + dlen) {
        return NGX_ERROR;
    }

    lua_pushlstring(L, (char *) dst, p - dst);

    return 1;
}
