
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_4__ {scalar_t__ len; int * data; } ;
typedef TYPE_1__ ngx_str_t ;
typedef int lua_State ;


 int LUA_TBOOLEAN ;
 scalar_t__ luaL_checklstring (int *,int,scalar_t__*) ;
 int luaL_checktype (int *,int,int ) ;
 int luaL_error (int *,char*) ;
 int lua_gettop (int *) ;
 scalar_t__ lua_isnil (int *,int) ;
 int * lua_newuserdata (int *,scalar_t__) ;
 int lua_pushlstring (int *,char*,scalar_t__) ;
 int lua_toboolean (int *,int) ;
 scalar_t__ ngx_http_lua_base64_encoded_length (scalar_t__,int) ;
 int ngx_http_lua_encode_base64 (TYPE_1__*,TYPE_1__*,int) ;

__attribute__((used)) static int
ngx_http_lua_ngx_encode_base64(lua_State *L)
{
    int n;
    int no_padding = 0;
    ngx_str_t p, src;

    n = lua_gettop(L);
    if (n != 1 && n != 2) {
        return luaL_error(L, "expecting one or two arguments");
    }

    if (lua_isnil(L, 1)) {
        src.data = (u_char *) "";
        src.len = 0;

    } else {
        src.data = (u_char *) luaL_checklstring(L, 1, &src.len);
    }

    if (n == 2) {

        luaL_checktype(L, 2, LUA_TBOOLEAN);
        no_padding = lua_toboolean(L, 2);
    }

    p.len = ngx_http_lua_base64_encoded_length(src.len, no_padding);

    p.data = lua_newuserdata(L, p.len);

    ngx_http_lua_encode_base64(&p, &src, no_padding);

    lua_pushlstring(L, (char *) p.data, p.len);

    return 1;
}
