
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {int read_event_handler; TYPE_2__* main; TYPE_1__* connection; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_17__ {scalar_t__ check_client_abort; } ;
typedef TYPE_4__ ngx_http_lua_loc_conf_t ;
struct TYPE_18__ {int (* resume_handler ) (TYPE_3__*) ;scalar_t__ entered_content_phase; TYPE_6__* cur_co_ctx; TYPE_6__* downstream; scalar_t__ waiting_more_body; } ;
typedef TYPE_5__ ngx_http_lua_ctx_t ;
struct TYPE_19__ {int * cleanup; } ;
typedef TYPE_6__ ngx_http_lua_co_ctx_t ;
struct TYPE_15__ {int count; } ;
struct TYPE_14__ {int log; } ;


 int NGX_LOG_DEBUG_HTTP ;
 int ngx_http_block_reading ;
 int ngx_http_core_run_phases (TYPE_3__*) ;
 TYPE_5__* ngx_http_get_module_ctx (TYPE_3__*,int ) ;
 TYPE_4__* ngx_http_get_module_loc_conf (TYPE_3__*,int ) ;
 int ngx_http_lua_module ;
 int ngx_http_lua_rd_check_broken_connection ;
 int ngx_http_lua_read_body_resume (TYPE_3__*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;

__attribute__((used)) static void
ngx_http_lua_req_body_post_read(ngx_http_request_t *r)
{
    ngx_http_lua_ctx_t *ctx;
    ngx_http_lua_co_ctx_t *coctx;

    ngx_http_lua_loc_conf_t *llcf;

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua req body post read, c:%ud", r->main->count);

    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);

    if (ctx->waiting_more_body) {
        ctx->waiting_more_body = 0;

        coctx = ctx->downstream;
        ctx->cur_co_ctx = coctx;

        coctx->cleanup = ((void*)0);

        llcf = ngx_http_get_module_loc_conf(r, ngx_http_lua_module);

        if (llcf->check_client_abort) {
            r->read_event_handler = ngx_http_lua_rd_check_broken_connection;

        } else {
            r->read_event_handler = ngx_http_block_reading;
        }

        if (ctx->entered_content_phase) {
            (void) ngx_http_lua_read_body_resume(r);

        } else {
            ctx->resume_handler = ngx_http_lua_read_body_resume;
            ngx_http_core_run_phases(r);
        }
    }
}
