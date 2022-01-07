
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * lua; } ;
typedef TYPE_1__ ngx_http_lua_main_conf_t ;
typedef int ngx_conf_t ;
typedef int lua_State ;


 TYPE_1__* ngx_http_conf_get_module_main_conf (int *,int ) ;
 int ngx_http_lua_module ;

lua_State *
ngx_http_lua_get_global_state(ngx_conf_t *cf)
{
    ngx_http_lua_main_conf_t *lmcf;

    lmcf = ngx_http_conf_get_module_main_conf(cf, ngx_http_lua_module);

    return lmcf->lua;
}
