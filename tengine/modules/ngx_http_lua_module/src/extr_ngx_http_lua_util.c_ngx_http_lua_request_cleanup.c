
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ ngx_socket_t ;
struct TYPE_13__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_14__ {int running_timers; } ;
typedef TYPE_3__ ngx_http_lua_main_conf_t ;
struct TYPE_15__ {scalar_t__ context; int ** cleanup; TYPE_2__* request; } ;
typedef TYPE_4__ ngx_http_lua_ctx_t ;
typedef int lua_State ;
struct TYPE_12__ {scalar_t__ fd; int log; } ;


 scalar_t__ NGX_HTTP_LUA_CONTEXT_TIMER ;
 int NGX_LOG_DEBUG_HTTP ;
 int dd (char*) ;
 TYPE_3__* ngx_http_get_module_main_conf (TYPE_2__*,int ) ;
 int ngx_http_lua_finalize_threads (TYPE_2__*,TYPE_4__*,int *) ;
 int * ngx_http_lua_get_lua_vm (TYPE_2__*,TYPE_4__*) ;
 int ngx_http_lua_module ;
 int ngx_log_debug1 (int ,int ,int ,char*,int) ;

void
ngx_http_lua_request_cleanup(ngx_http_lua_ctx_t *ctx, int forcible)
{
    lua_State *L;
    ngx_http_request_t *r;
    ngx_http_lua_main_conf_t *lmcf;


    if (ctx == ((void*)0)) {
        dd("ctx is NULL");
        return;
    }

    r = ctx->request;

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua request cleanup: forcible=%d", forcible);

    if (ctx->cleanup) {
        *ctx->cleanup = ((void*)0);
        ctx->cleanup = ((void*)0);
    }

    lmcf = ngx_http_get_module_main_conf(r, ngx_http_lua_module);


    if (r->connection->fd == (ngx_socket_t) -1) {


        if (ctx->context == NGX_HTTP_LUA_CONTEXT_TIMER) {

            lmcf->running_timers--;
        }
    }


    L = ngx_http_lua_get_lua_vm(r, ctx);

    ngx_http_lua_finalize_threads(r, ctx, L);
}
