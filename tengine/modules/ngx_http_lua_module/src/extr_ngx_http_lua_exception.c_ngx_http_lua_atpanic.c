
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int lua_State ;


 scalar_t__ LUA_TSTRING ;
 int NGX_LUA_EXCEPTION_THROW (int) ;
 int abort () ;
 scalar_t__ lua_tolstring (int *,int,size_t*) ;
 scalar_t__ lua_type (int *,int) ;
 int ngx_log_stderr (int ,char*,size_t,int *) ;
 int ngx_quit ;

int
ngx_http_lua_atpanic(lua_State *L)
{



    u_char *s = ((void*)0);
    size_t len = 0;

    if (lua_type(L, -1) == LUA_TSTRING) {
        s = (u_char *) lua_tolstring(L, -1, &len);
    }

    if (s == ((void*)0)) {
        s = (u_char *) "unknown reason";
        len = sizeof("unknown reason") - 1;
    }

    ngx_log_stderr(0, "lua atpanic: Lua VM crashed, reason: %*s", len, s);
    ngx_quit = 1;


    NGX_LUA_EXCEPTION_THROW(1);



}
