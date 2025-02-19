
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_16__ {int main; TYPE_5__* connection; } ;
typedef TYPE_1__ ngx_http_request_t ;
struct TYPE_17__ {scalar_t__ flushing_coros; scalar_t__ entered_content_phase; scalar_t__ busy_bufs; } ;
typedef TYPE_2__ ngx_http_lua_ctx_t ;
struct TYPE_18__ {int send_lowat; int send_timeout; } ;
typedef TYPE_3__ ngx_http_core_loc_conf_t ;
struct TYPE_19__ {int delayed; scalar_t__ timer_set; } ;
typedef TYPE_4__ ngx_event_t ;
struct TYPE_20__ {int buffered; int log; TYPE_4__* write; } ;
typedef TYPE_5__ ngx_connection_t ;
typedef int ngx_chain_t ;


 scalar_t__ NGX_DONE ;
 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_LOWLEVEL_BUFFERED ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 int dd (char*,int) ;
 int ngx_add_timer (TYPE_4__*,int ) ;
 int ngx_del_timer (TYPE_4__*) ;
 scalar_t__ ngx_handle_write_event (TYPE_4__*,int ) ;
 int ngx_http_core_module ;
 TYPE_3__* ngx_http_get_module_loc_conf (int ,int ) ;
 int ngx_http_lua_finalize_request (TYPE_1__*,scalar_t__) ;
 int * ngx_http_lua_get_flush_chain (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ ngx_http_lua_output_filter (TYPE_1__*,int *) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_lua_flush_pending_output(ngx_http_request_t *r,
    ngx_http_lua_ctx_t *ctx)
{
    ngx_int_t rc;
    ngx_chain_t *cl;
    ngx_event_t *wev;
    ngx_connection_t *c;

    ngx_http_core_loc_conf_t *clcf;

    c = r->connection;
    wev = c->write;

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "lua flushing output: buffered 0x%uxd",
                   c->buffered);

    if (ctx->busy_bufs) {


        rc = ngx_http_lua_output_filter(r, ((void*)0));

    } else {
        cl = ngx_http_lua_get_flush_chain(r, ctx);
        if (cl == ((void*)0)) {
            return NGX_ERROR;
        }

        rc = ngx_http_lua_output_filter(r, cl);
    }

    dd("output filter returned %d", (int) rc);

    if (rc == NGX_ERROR || rc > NGX_OK) {
        return rc;
    }

    if (c->buffered & NGX_HTTP_LOWLEVEL_BUFFERED) {

        clcf = ngx_http_get_module_loc_conf(r->main, ngx_http_core_module);

        if (!wev->delayed) {
            ngx_add_timer(wev, clcf->send_timeout);
        }

        if (ngx_handle_write_event(wev, clcf->send_lowat) != NGX_OK) {
            if (ctx->entered_content_phase) {
                ngx_http_lua_finalize_request(r, NGX_ERROR);
            }

            return NGX_ERROR;
        }

        if (ctx->flushing_coros) {
            ngx_log_debug1(NGX_LOG_DEBUG_HTTP, c->log, 0,
                           "lua flush still waiting: buffered 0x%uxd",
                           c->buffered);

            return NGX_DONE;
        }

    } else {

        if (wev->timer_set && !wev->delayed) {
            ngx_del_timer(wev);
        }

    }

    return NGX_OK;
}
