
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_4__ {int len; int * data; } ;
typedef TYPE_1__ ngx_str_t ;
typedef int lua_State ;


 scalar_t__ LUA_TSTRING ;
 scalar_t__ NGX_OK ;
 scalar_t__ luaL_checklstring (int *,int,int *) ;
 int luaL_error (int *,char*) ;
 int lua_gettop (int *) ;
 int * lua_newuserdata (int *,int ) ;
 int lua_pushlstring (int *,char*,int ) ;
 int lua_pushnil (int *) ;
 scalar_t__ lua_type (int *,int) ;
 int ngx_base64_decoded_length (int ) ;
 scalar_t__ ngx_decode_base64 (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static int
ngx_http_lua_ngx_decode_base64(lua_State *L)
{
    ngx_str_t p, src;

    if (lua_gettop(L) != 1) {
        return luaL_error(L, "expecting one argument");
    }

    if (lua_type(L, 1) != LUA_TSTRING) {
        return luaL_error(L, "string argument only");
    }

    src.data = (u_char *) luaL_checklstring(L, 1, &src.len);

    p.len = ngx_base64_decoded_length(src.len);

    p.data = lua_newuserdata(L, p.len);

    if (ngx_decode_base64(&p, &src) == NGX_OK) {
        lua_pushlstring(L, (char *) p.data, p.len);

    } else {
        lua_pushnil(L);
    }

    return 1;
}
