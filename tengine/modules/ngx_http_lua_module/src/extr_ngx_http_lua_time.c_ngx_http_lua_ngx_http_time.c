
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef scalar_t__ time_t ;
typedef int lua_State ;


 scalar_t__ luaL_checknumber (int *,int) ;
 int luaL_error (int *,char*) ;
 int lua_gettop (int *) ;
 int lua_pushlstring (int *,char*,int) ;
 int * ngx_http_time (int *,scalar_t__) ;

__attribute__((used)) static int
ngx_http_lua_ngx_http_time(lua_State *L)
{
    time_t t;
    u_char *p;

    u_char buf[sizeof("Mon, 28 Sep 1970 06:00:00 GMT") - 1];

    if (lua_gettop(L) != 1) {
        return luaL_error(L, "expecting one argument");
    }

    t = (time_t) luaL_checknumber(L, 1);

    p = buf;
    p = ngx_http_time(p, t);

    lua_pushlstring(L, (char *) buf, p - buf);

    return 1;
}
