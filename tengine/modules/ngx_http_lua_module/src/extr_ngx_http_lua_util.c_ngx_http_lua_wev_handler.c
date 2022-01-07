
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_20__ {int main; TYPE_6__* connection; } ;
typedef TYPE_1__ ngx_http_request_t ;
struct TYPE_21__ {int (* write_event_handler ) (TYPE_1__*,TYPE_2__*) ;} ;
typedef TYPE_2__ ngx_http_lua_socket_tcp_upstream_t ;
struct TYPE_22__ {scalar_t__ entered_content_phase; scalar_t__ flushing_coros; TYPE_2__* downstream; scalar_t__ writing_raw_req_socket; } ;
typedef TYPE_3__ ngx_http_lua_ctx_t ;
struct TYPE_23__ {int send_lowat; int send_timeout; } ;
typedef TYPE_4__ ngx_http_core_loc_conf_t ;
struct TYPE_24__ {scalar_t__ timedout; int ready; scalar_t__ delayed; } ;
typedef TYPE_5__ ngx_event_t ;
struct TYPE_25__ {int timedout; int buffered; int log; int error; TYPE_5__* write; } ;
typedef TYPE_6__ ngx_connection_t ;


 scalar_t__ NGX_DONE ;
 scalar_t__ NGX_ERROR ;
 int NGX_ETIMEDOUT ;
 int NGX_HTTP_LOWLEVEL_BUFFERED ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_INFO ;
 scalar_t__ NGX_OK ;
 int dd (char*,int,...) ;
 int ngx_add_timer (TYPE_5__*,int ) ;
 scalar_t__ ngx_handle_write_event (TYPE_5__*,int ) ;
 int ngx_http_core_module ;
 TYPE_3__* ngx_http_get_module_ctx (TYPE_1__*,int ) ;
 TYPE_4__* ngx_http_get_module_loc_conf (int ,int ) ;
 int ngx_http_lua_finalize_request (TYPE_1__*,scalar_t__) ;
 scalar_t__ ngx_http_lua_flush_pending_output (TYPE_1__*,TYPE_3__*) ;
 int ngx_http_lua_module ;
 scalar_t__ ngx_http_lua_process_flushing_coroutines (TYPE_1__*,TYPE_3__*) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug3 (int ,int ,int ,char*,scalar_t__,int ,scalar_t__) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int stub1 (TYPE_1__*,TYPE_2__*) ;

ngx_int_t
ngx_http_lua_wev_handler(ngx_http_request_t *r)
{
    ngx_int_t rc;
    ngx_event_t *wev;
    ngx_connection_t *c;
    ngx_http_lua_ctx_t *ctx;
    ngx_http_core_loc_conf_t *clcf;

    ngx_http_lua_socket_tcp_upstream_t *u;

    c = r->connection;
    wev = c->write;

    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);
    if (ctx == ((void*)0)) {
        return NGX_ERROR;
    }

    ngx_log_debug3(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "lua run write event handler: timedout:%ud, ready:%ud, "
                   "writing_raw_req_socket:%ud",
                   wev->timedout, wev->ready, ctx->writing_raw_req_socket);

    clcf = ngx_http_get_module_loc_conf(r->main, ngx_http_core_module);

    if (wev->timedout && !ctx->writing_raw_req_socket) {
        if (!wev->delayed) {
            ngx_log_error(NGX_LOG_INFO, c->log, NGX_ETIMEDOUT,
                          "client timed out");
            c->timedout = 1;

            goto flush_coros;
        }

        wev->timedout = 0;
        wev->delayed = 0;

        if (!wev->ready) {
            ngx_add_timer(wev, clcf->send_timeout);

            if (ngx_handle_write_event(wev, clcf->send_lowat) != NGX_OK) {
                if (ctx->entered_content_phase) {
                    ngx_http_lua_finalize_request(r, NGX_ERROR);
                }
                return NGX_ERROR;
            }
        }
    }

    if (!wev->ready && !wev->timedout) {
        goto useless;
    }

    if (ctx->writing_raw_req_socket) {
        ctx->writing_raw_req_socket = 0;

        u = ctx->downstream;
        if (u == ((void*)0)) {
            return NGX_ERROR;
        }

        u->write_event_handler(r, u);
        return NGX_DONE;
    }

    if (c->buffered & NGX_HTTP_LOWLEVEL_BUFFERED) {
        rc = ngx_http_lua_flush_pending_output(r, ctx);

        dd("flush pending output returned %d, c->error: %d", (int) rc,
           c->error);

        if (rc != NGX_ERROR && rc != NGX_OK) {
            goto useless;
        }


    }

flush_coros:

    dd("ctx->flushing_coros: %d", (int) ctx->flushing_coros);

    if (ctx->flushing_coros) {
        return ngx_http_lua_process_flushing_coroutines(r, ctx);
    }



useless:

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "useless lua write event handler");

    if (ctx->entered_content_phase) {
        return NGX_OK;
    }

    return NGX_DONE;
}
