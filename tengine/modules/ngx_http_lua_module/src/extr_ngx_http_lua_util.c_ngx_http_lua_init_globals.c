
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_log_t ;
typedef int ngx_http_lua_main_conf_t ;
typedef int ngx_cycle_t ;
typedef int lua_State ;


 int NGX_LOG_DEBUG_HTTP ;
 int ngx_http_lua_inject_ndk_api (int *) ;
 int ngx_http_lua_inject_ngx_api (int *,int *,int *) ;
 int ngx_log_debug0 (int ,int *,int ,char*) ;

__attribute__((used)) static void
ngx_http_lua_init_globals(lua_State *L, ngx_cycle_t *cycle,
    ngx_http_lua_main_conf_t *lmcf, ngx_log_t *log)
{
    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, log, 0,
                   "lua initializing lua globals");





    ngx_http_lua_inject_ngx_api(L, lmcf, log);
}
