
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef scalar_t__ ngx_uint_t ;
typedef int ngx_int_t ;
struct TYPE_19__ {TYPE_2__* main; int uri; TYPE_1__* connection; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_20__ {scalar_t__ malloc_trim_cycle; scalar_t__ malloc_trim_req_count; } ;
typedef TYPE_4__ ngx_http_lua_main_conf_t ;
struct TYPE_21__ {int (* log_handler ) (TYPE_3__*) ;} ;
typedef TYPE_5__ ngx_http_lua_loc_conf_t ;
struct TYPE_22__ {int context; } ;
typedef TYPE_6__ ngx_http_lua_ctx_t ;
struct TYPE_18__ {int count; } ;
struct TYPE_17__ {int log; } ;


 int NGX_DECLINED ;
 int NGX_ERROR ;
 int NGX_HTTP_LUA_CONTEXT_LOG ;
 int NGX_LOG_DEBUG_HTTP ;
 int dd (char*,...) ;
 int malloc_trim (int) ;
 TYPE_6__* ngx_http_get_module_ctx (TYPE_3__*,int ) ;
 TYPE_5__* ngx_http_get_module_loc_conf (TYPE_3__*,int ) ;
 TYPE_4__* ngx_http_get_module_main_conf (TYPE_3__*,int ) ;
 TYPE_6__* ngx_http_lua_create_ctx (TYPE_3__*) ;
 int ngx_http_lua_module ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int *,int ) ;
 int stub1 (TYPE_3__*) ;

ngx_int_t
ngx_http_lua_log_handler(ngx_http_request_t *r)
{




    ngx_http_lua_loc_conf_t *llcf;
    ngx_http_lua_ctx_t *ctx;
    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua log handler, uri:\"%V\" c:%ud", &r->uri,
                   r->main->count);

    llcf = ngx_http_get_module_loc_conf(r, ngx_http_lua_module);

    if (llcf->log_handler == ((void*)0)) {
        dd("no log handler found");
        return NGX_DECLINED;
    }

    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);

    dd("ctx = %p", ctx);

    if (ctx == ((void*)0)) {
        ctx = ngx_http_lua_create_ctx(r);
        if (ctx == ((void*)0)) {
            return NGX_ERROR;
        }
    }

    ctx->context = NGX_HTTP_LUA_CONTEXT_LOG;

    dd("calling log handler");
    return llcf->log_handler(r);
}
