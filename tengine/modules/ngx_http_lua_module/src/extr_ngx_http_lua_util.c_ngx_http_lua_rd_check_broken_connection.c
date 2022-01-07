
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_19__ {int (* write_event_handler ) (TYPE_3__*) ;TYPE_2__* connection; scalar_t__ done; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_20__ {scalar_t__ entered_content_phase; TYPE_1__* on_abort_co_ctx; TYPE_1__* cur_co_ctx; int resume_handler; int uthreads; } ;
typedef TYPE_4__ ngx_http_lua_ctx_t ;
struct TYPE_21__ {scalar_t__ active; } ;
typedef TYPE_5__ ngx_event_t ;
struct TYPE_18__ {int error; int log; TYPE_5__* read; } ;
struct TYPE_17__ {scalar_t__ co_status; } ;


 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ;
 scalar_t__ NGX_HTTP_LUA_CO_RUNNING ;
 scalar_t__ NGX_HTTP_LUA_CO_SUSPENDED ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 int NGX_READ_EVENT ;
 int NGX_USE_LEVEL_EVENT ;
 scalar_t__ ngx_del_event (TYPE_5__*,int ,int ) ;
 int ngx_event_flags ;
 int ngx_http_core_run_phases (TYPE_3__*) ;
 TYPE_4__* ngx_http_get_module_ctx (TYPE_3__*,int ) ;
 scalar_t__ ngx_http_lua_check_broken_connection (TYPE_3__*,TYPE_5__*) ;
 int ngx_http_lua_content_wev_handler (TYPE_3__*) ;
 int ngx_http_lua_finalize_request (TYPE_3__*,scalar_t__) ;
 int ngx_http_lua_module ;
 int ngx_http_lua_on_abort_resume ;
 int ngx_http_lua_request_cleanup (TYPE_4__*,int ) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int stub1 (TYPE_3__*) ;

void
ngx_http_lua_rd_check_broken_connection(ngx_http_request_t *r)
{
    ngx_int_t rc;
    ngx_event_t *rev;
    ngx_http_lua_ctx_t *ctx;

    if (r->done) {
        return;
    }

    rc = ngx_http_lua_check_broken_connection(r, r->connection->read);

    if (rc == NGX_OK) {
        return;
    }



    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);
    if (ctx == ((void*)0)) {
        return;
    }

    if (ctx->on_abort_co_ctx == ((void*)0)) {
        r->connection->error = 1;
        ngx_http_lua_request_cleanup(ctx, 0);
        ngx_http_lua_finalize_request(r, rc);
        return;
    }

    if (ctx->on_abort_co_ctx->co_status != NGX_HTTP_LUA_CO_SUSPENDED) {



        rev = r->connection->read;

        if ((ngx_event_flags & NGX_USE_LEVEL_EVENT) && rev->active) {
            if (ngx_del_event(rev, NGX_READ_EVENT, 0) != NGX_OK) {
                ngx_http_lua_request_cleanup(ctx, 0);
                ngx_http_lua_finalize_request(r,
                                              NGX_HTTP_INTERNAL_SERVER_ERROR);
                return;
            }
        }

        return;
    }

    ctx->uthreads++;
    ctx->resume_handler = ngx_http_lua_on_abort_resume;
    ctx->on_abort_co_ctx->co_status = NGX_HTTP_LUA_CO_RUNNING;
    ctx->cur_co_ctx = ctx->on_abort_co_ctx;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua waking up the on_abort callback thread");

    if (ctx->entered_content_phase) {
        r->write_event_handler = ngx_http_lua_content_wev_handler;

    } else {
        r->write_event_handler = ngx_http_core_run_phases;
    }

    r->write_event_handler(r);
}
