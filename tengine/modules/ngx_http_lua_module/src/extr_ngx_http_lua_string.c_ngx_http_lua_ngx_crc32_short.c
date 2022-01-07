
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int lua_State ;
typedef int lua_Number ;


 scalar_t__ luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*,int) ;
 int lua_gettop (int *) ;
 int lua_pushnumber (int *,int ) ;
 scalar_t__ ngx_crc32_short (int *,size_t) ;

__attribute__((used)) static int
ngx_http_lua_ngx_crc32_short(lua_State *L)
{
    u_char *p;
    size_t len;

    if (lua_gettop(L) != 1) {
        return luaL_error(L, "expecting one argument, but got %d",
                          lua_gettop(L));
    }

    p = (u_char *) luaL_checklstring(L, 1, &len);

    lua_pushnumber(L, (lua_Number) ngx_crc32_short(p, len));
    return 1;
}
