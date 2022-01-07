
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* main; TYPE_1__* connection; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_12__ {int read_body_done; scalar_t__ waiting_more_body; } ;
typedef TYPE_4__ ngx_http_lua_ctx_t ;
struct TYPE_10__ {int count; } ;
struct TYPE_9__ {int log; } ;


 int NGX_LOG_DEBUG_HTTP ;
 int ngx_http_core_run_phases (TYPE_3__*) ;
 TYPE_4__* ngx_http_get_module_ctx (TYPE_3__*,int ) ;
 int ngx_http_lua_module ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;

void
ngx_http_lua_generic_phase_post_read(ngx_http_request_t *r)
{
    ngx_http_lua_ctx_t *ctx;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua post read for rewrite/access phases");

    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);

    ctx->read_body_done = 1;





    if (ctx->waiting_more_body) {
        ctx->waiting_more_body = 0;
        ngx_http_core_run_phases(r);
    }
}
