
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_13__ ;


typedef int ngx_uint_t ;
struct TYPE_18__ {TYPE_7__* connection; } ;
struct TYPE_20__ {int responses; int requests; scalar_t__ connected; int received; TYPE_1__ peer; } ;
typedef TYPE_3__ ngx_stream_upstream_t ;
struct TYPE_21__ {int received; TYPE_7__* connection; TYPE_3__* upstream; } ;
typedef TYPE_4__ ngx_stream_session_t ;
struct TYPE_22__ {int responses; int timeout; } ;
typedef TYPE_5__ ngx_stream_proxy_srv_conf_t ;
typedef int * ngx_log_handler_pt ;
struct TYPE_23__ {int write; scalar_t__ delayed; int ready; scalar_t__ timedout; TYPE_7__* data; } ;
typedef TYPE_6__ ngx_event_t ;
struct TYPE_24__ {scalar_t__ type; TYPE_13__* log; TYPE_2__* read; int sent; int write; scalar_t__ close; TYPE_4__* data; } ;
typedef TYPE_7__ ngx_connection_t ;
struct TYPE_19__ {int error; int delayed; } ;
struct TYPE_17__ {int * handler; } ;


 int NGX_ETIMEDOUT ;
 int NGX_LOG_DEBUG_STREAM ;
 int NGX_LOG_INFO ;
 int NGX_MAX_INT32_VALUE ;
 scalar_t__ NGX_OK ;
 int NGX_STREAM_BAD_GATEWAY ;
 int NGX_STREAM_INTERNAL_SERVER_ERROR ;
 int NGX_STREAM_OK ;
 scalar_t__ SOCK_DGRAM ;
 int ngx_add_timer (int ,int ) ;
 int ngx_connection_error (TYPE_7__*,int ,char*) ;
 scalar_t__ ngx_handle_read_event (TYPE_6__*,int ) ;
 int ngx_log_debug0 (int ,TYPE_13__*,int ,char*) ;
 int ngx_log_error (int ,TYPE_13__*,int ,char*,...) ;
 TYPE_5__* ngx_stream_get_module_srv_conf (TYPE_4__*,int ) ;
 int ngx_stream_proxy_finalize (TYPE_4__*,int ) ;
 int ngx_stream_proxy_module ;
 int ngx_stream_proxy_process (TYPE_4__*,int ,int ) ;

__attribute__((used)) static void
ngx_stream_proxy_process_connection(ngx_event_t *ev, ngx_uint_t from_upstream)
{
    ngx_connection_t *c, *pc;
    ngx_log_handler_pt handler;
    ngx_stream_session_t *s;
    ngx_stream_upstream_t *u;
    ngx_stream_proxy_srv_conf_t *pscf;

    c = ev->data;
    s = c->data;
    u = s->upstream;

    if (c->close) {
        ngx_log_error(NGX_LOG_INFO, c->log, 0, "shutdown timeout");
        ngx_stream_proxy_finalize(s, NGX_STREAM_OK);
        return;
    }

    c = s->connection;
    pc = u->peer.connection;

    pscf = ngx_stream_get_module_srv_conf(s, ngx_stream_proxy_module);

    if (ev->timedout) {
        ev->timedout = 0;

        if (ev->delayed) {
            ev->delayed = 0;

            if (!ev->ready) {
                if (ngx_handle_read_event(ev, 0) != NGX_OK) {
                    ngx_stream_proxy_finalize(s,
                                              NGX_STREAM_INTERNAL_SERVER_ERROR);
                    return;
                }

                if (u->connected && !c->read->delayed && !pc->read->delayed) {
                    ngx_add_timer(c->write, pscf->timeout);
                }

                return;
            }

        } else {
            if (s->connection->type == SOCK_DGRAM) {

                if (pscf->responses == NGX_MAX_INT32_VALUE
                    || (u->responses >= pscf->responses * u->requests))
                {






                    handler = c->log->handler;
                    c->log->handler = ((void*)0);

                    ngx_log_error(NGX_LOG_INFO, c->log, 0,
                                  "udp timed out"
                                  ", packets from/to client:%ui/%ui"
                                  ", bytes from/to client:%O/%O"
                                  ", bytes from/to upstream:%O/%O",
                                  u->requests, u->responses,
                                  s->received, c->sent, u->received,
                                  pc ? pc->sent : 0);

                    c->log->handler = handler;

                    ngx_stream_proxy_finalize(s, NGX_STREAM_OK);
                    return;
                }

                ngx_connection_error(pc, NGX_ETIMEDOUT, "upstream timed out");

                pc->read->error = 1;

                ngx_stream_proxy_finalize(s, NGX_STREAM_BAD_GATEWAY);

                return;
            }

            ngx_connection_error(c, NGX_ETIMEDOUT, "connection timed out");

            ngx_stream_proxy_finalize(s, NGX_STREAM_OK);

            return;
        }

    } else if (ev->delayed) {

        ngx_log_debug0(NGX_LOG_DEBUG_STREAM, c->log, 0,
                       "stream connection delayed");

        if (ngx_handle_read_event(ev, 0) != NGX_OK) {
            ngx_stream_proxy_finalize(s, NGX_STREAM_INTERNAL_SERVER_ERROR);
        }

        return;
    }

    if (from_upstream && !u->connected) {
        return;
    }

    ngx_stream_proxy_process(s, from_upstream, ev->write);
}
