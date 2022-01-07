
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ngx_stream_session_t ;
struct TYPE_9__ {int * out; } ;
typedef TYPE_1__ ngx_stream_return_ctx_t ;
struct TYPE_10__ {scalar_t__ timedout; TYPE_3__* data; } ;
typedef TYPE_2__ ngx_event_t ;
struct TYPE_11__ {int log; int buffered; int * data; } ;
typedef TYPE_3__ ngx_connection_t ;


 scalar_t__ NGX_ERROR ;
 int NGX_ETIMEDOUT ;
 int NGX_LOG_DEBUG_STREAM ;
 scalar_t__ NGX_OK ;
 int NGX_STREAM_INTERNAL_SERVER_ERROR ;
 int NGX_STREAM_OK ;
 int ngx_add_timer (TYPE_2__*,int) ;
 int ngx_connection_error (TYPE_3__*,int ,char*) ;
 scalar_t__ ngx_handle_write_event (TYPE_2__*,int ) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_stream_finalize_session (int *,int ) ;
 TYPE_1__* ngx_stream_get_module_ctx (int *,int ) ;
 int ngx_stream_return_module ;
 scalar_t__ ngx_stream_top_filter (int *,int *,int) ;

__attribute__((used)) static void
ngx_stream_return_write_handler(ngx_event_t *ev)
{
    ngx_connection_t *c;
    ngx_stream_session_t *s;
    ngx_stream_return_ctx_t *ctx;

    c = ev->data;
    s = c->data;

    if (ev->timedout) {
        ngx_connection_error(c, NGX_ETIMEDOUT, "connection timed out");
        ngx_stream_finalize_session(s, NGX_STREAM_OK);
        return;
    }

    ctx = ngx_stream_get_module_ctx(s, ngx_stream_return_module);

    if (ngx_stream_top_filter(s, ctx->out, 1) == NGX_ERROR) {
        ngx_stream_finalize_session(s, NGX_STREAM_INTERNAL_SERVER_ERROR);
        return;
    }

    ctx->out = ((void*)0);

    if (!c->buffered) {
        ngx_log_debug0(NGX_LOG_DEBUG_STREAM, c->log, 0,
                       "stream return done sending");
        ngx_stream_finalize_session(s, NGX_STREAM_OK);
        return;
    }

    if (ngx_handle_write_event(ev, 0) != NGX_OK) {
        ngx_stream_finalize_session(s, NGX_STREAM_INTERNAL_SERVER_ERROR);
        return;
    }

    ngx_add_timer(ev, 5000);
}
