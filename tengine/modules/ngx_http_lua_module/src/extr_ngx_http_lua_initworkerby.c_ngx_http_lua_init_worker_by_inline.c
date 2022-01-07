
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ngx_log_t ;
typedef int ngx_int_t ;
struct TYPE_4__ {int len; scalar_t__ data; } ;
struct TYPE_5__ {TYPE_1__ init_worker_src; } ;
typedef TYPE_2__ ngx_http_lua_main_conf_t ;
typedef int lua_State ;


 scalar_t__ luaL_loadbuffer (int *,char*,int ,char*) ;
 scalar_t__ ngx_http_lua_do_call (int *,int *) ;
 int ngx_http_lua_report (int *,int *,int,char*) ;

ngx_int_t
ngx_http_lua_init_worker_by_inline(ngx_log_t *log,
    ngx_http_lua_main_conf_t *lmcf, lua_State *L)
{
    int status;

    status = luaL_loadbuffer(L, (char *) lmcf->init_worker_src.data,
                             lmcf->init_worker_src.len, "=init_worker_by_lua")
             || ngx_http_lua_do_call(log, L);

    return ngx_http_lua_report(log, L, status, "init_worker_by_lua");
}
