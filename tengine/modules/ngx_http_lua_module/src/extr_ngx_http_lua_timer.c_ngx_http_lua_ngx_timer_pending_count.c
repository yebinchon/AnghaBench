
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_http_request_t ;
struct TYPE_3__ {int pending_timers; } ;
typedef TYPE_1__ ngx_http_lua_main_conf_t ;
typedef int lua_State ;


 int luaL_error (int *,char*) ;
 int lua_pushnumber (int *,int ) ;
 TYPE_1__* ngx_http_get_module_main_conf (int *,int ) ;
 int * ngx_http_lua_get_req (int *) ;
 int ngx_http_lua_module ;

__attribute__((used)) static int
ngx_http_lua_ngx_timer_pending_count(lua_State *L)
{
    ngx_http_request_t *r;
    ngx_http_lua_main_conf_t *lmcf;

    r = ngx_http_lua_get_req(L);
    if (r == ((void*)0)) {
        return luaL_error(L, "no request");
    }

    lmcf = ngx_http_get_module_main_conf(r, ngx_http_lua_module);

    lua_pushnumber(L, lmcf->pending_timers);

    return 1;
}
