
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef scalar_t__ time_t ;
typedef int lua_State ;
typedef int lua_Number ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*) ;
 int lua_gettop (int *) ;
 int lua_pushnil (int *) ;
 int lua_pushnumber (int *,int ) ;
 scalar_t__ ngx_http_parse_time (int *,size_t) ;

__attribute__((used)) static int
ngx_http_lua_ngx_parse_http_time(lua_State *L)
{
    u_char *p;
    size_t len;
    time_t time;

    if (lua_gettop(L) != 1) {
        return luaL_error(L, "expecting one argument");
    }

    p = (u_char *) luaL_checklstring(L, 1, &len);

    time = ngx_http_parse_time(p, len);
    if (time == NGX_ERROR) {
        lua_pushnil(L);
        return 1;
    }

    lua_pushnumber(L, (lua_Number) time);

    return 1;
}
