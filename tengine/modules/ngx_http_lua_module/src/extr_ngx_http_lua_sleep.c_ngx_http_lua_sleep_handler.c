
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ ngx_socket_t ;
struct TYPE_14__ {int args; int uri; TYPE_6__* connection; } ;
typedef TYPE_1__ ngx_http_request_t ;
struct TYPE_15__ {int (* resume_handler ) (TYPE_1__*) ;scalar_t__ entered_content_phase; TYPE_3__* cur_co_ctx; } ;
typedef TYPE_2__ ngx_http_lua_ctx_t ;
struct TYPE_16__ {int * cleanup; TYPE_1__* data; } ;
typedef TYPE_3__ ngx_http_lua_co_ctx_t ;
struct TYPE_17__ {TYPE_1__* current_request; } ;
typedef TYPE_4__ ngx_http_log_ctx_t ;
struct TYPE_18__ {TYPE_3__* data; } ;
typedef TYPE_5__ ngx_event_t ;
struct TYPE_19__ {scalar_t__ fd; TYPE_7__* log; } ;
typedef TYPE_6__ ngx_connection_t ;
struct TYPE_20__ {TYPE_4__* data; } ;


 int NGX_LOG_DEBUG_HTTP ;
 int ngx_http_core_run_phases (TYPE_1__*) ;
 TYPE_2__* ngx_http_get_module_ctx (TYPE_1__*,int ) ;
 int ngx_http_lua_module ;
 int ngx_http_lua_sleep_resume (TYPE_1__*) ;
 int ngx_http_run_posted_requests (TYPE_6__*) ;
 int ngx_log_debug2 (int ,TYPE_7__*,int ,char*,int *,int *) ;

void
ngx_http_lua_sleep_handler(ngx_event_t *ev)
{
    ngx_connection_t *c;
    ngx_http_request_t *r;
    ngx_http_lua_ctx_t *ctx;
    ngx_http_log_ctx_t *log_ctx;
    ngx_http_lua_co_ctx_t *coctx;

    coctx = ev->data;

    r = coctx->data;
    c = r->connection;

    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);

    if (ctx == ((void*)0)) {
        return;
    }

    if (c->fd != (ngx_socket_t) -1) {
        log_ctx = c->log->data;
        log_ctx->current_request = r;
    }

    coctx->cleanup = ((void*)0);

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "lua sleep timer expired: \"%V?%V\"", &r->uri, &r->args);

    ctx->cur_co_ctx = coctx;

    if (ctx->entered_content_phase) {
        (void) ngx_http_lua_sleep_resume(r);

    } else {
        ctx->resume_handler = ngx_http_lua_sleep_resume;
        ngx_http_core_run_phases(r);
    }

    ngx_http_run_posted_requests(c);
}
