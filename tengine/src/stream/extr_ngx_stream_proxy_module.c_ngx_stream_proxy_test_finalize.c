
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
typedef struct TYPE_13__ TYPE_11__ ;


typedef scalar_t__ ngx_uint_t ;
struct TYPE_14__ {TYPE_6__* connection; } ;
struct TYPE_16__ {int requests; int responses; int received; TYPE_1__ peer; scalar_t__ connected; } ;
typedef TYPE_3__ ngx_stream_upstream_t ;
struct TYPE_17__ {int received; TYPE_3__* upstream; TYPE_6__* connection; } ;
typedef TYPE_4__ ngx_stream_session_t ;
struct TYPE_18__ {int requests; int responses; } ;
typedef TYPE_5__ ngx_stream_proxy_srv_conf_t ;
typedef void* ngx_log_handler_pt ;
typedef int ngx_int_t ;
struct TYPE_19__ {scalar_t__ type; TYPE_11__* log; int sent; scalar_t__ buffered; TYPE_2__* read; } ;
typedef TYPE_6__ ngx_connection_t ;
struct TYPE_15__ {int eof; } ;
struct TYPE_13__ {int * handler; } ;


 int NGX_DECLINED ;
 int NGX_LOG_INFO ;
 int NGX_MAX_INT32_VALUE ;
 int NGX_OK ;
 int NGX_STREAM_OK ;
 scalar_t__ SOCK_DGRAM ;
 int ngx_delete_udp_connection (TYPE_6__*) ;
 int ngx_log_error (int ,TYPE_11__*,int ,char*,...) ;
 TYPE_5__* ngx_stream_get_module_srv_conf (TYPE_4__*,int ) ;
 int ngx_stream_proxy_finalize (TYPE_4__*,int ) ;
 int ngx_stream_proxy_module ;

__attribute__((used)) static ngx_int_t
ngx_stream_proxy_test_finalize(ngx_stream_session_t *s,
    ngx_uint_t from_upstream)
{
    ngx_connection_t *c, *pc;
    ngx_log_handler_pt handler;
    ngx_stream_upstream_t *u;
    ngx_stream_proxy_srv_conf_t *pscf;

    pscf = ngx_stream_get_module_srv_conf(s, ngx_stream_proxy_module);

    c = s->connection;
    u = s->upstream;
    pc = u->connected ? u->peer.connection : ((void*)0);

    if (c->type == SOCK_DGRAM) {

        if (pscf->requests && u->requests < pscf->requests) {
            return NGX_DECLINED;
        }

        if (pscf->requests) {
            ngx_delete_udp_connection(c);
        }

        if (pscf->responses == NGX_MAX_INT32_VALUE
            || u->responses < pscf->responses * u->requests)
        {
            return NGX_DECLINED;
        }

        if (pc == ((void*)0) || c->buffered || pc->buffered) {
            return NGX_DECLINED;
        }

        handler = c->log->handler;
        c->log->handler = ((void*)0);

        ngx_log_error(NGX_LOG_INFO, c->log, 0,
                      "udp done"
                      ", packets from/to client:%ui/%ui"
                      ", bytes from/to client:%O/%O"
                      ", bytes from/to upstream:%O/%O",
                      u->requests, u->responses,
                      s->received, c->sent, u->received, pc ? pc->sent : 0);

        c->log->handler = handler;

        ngx_stream_proxy_finalize(s, NGX_STREAM_OK);

        return NGX_OK;
    }



    if (pc == ((void*)0)
        || (!c->read->eof && !pc->read->eof)
        || (!c->read->eof && c->buffered)
        || (!pc->read->eof && pc->buffered))
    {
        return NGX_DECLINED;
    }

    handler = c->log->handler;
    c->log->handler = ((void*)0);

    ngx_log_error(NGX_LOG_INFO, c->log, 0,
                  "%s disconnected"
                  ", bytes from/to client:%O/%O"
                  ", bytes from/to upstream:%O/%O",
                  from_upstream ? "upstream" : "client",
                  s->received, c->sent, u->received, pc ? pc->sent : 0);

    c->log->handler = handler;

    ngx_stream_proxy_finalize(s, NGX_STREAM_OK);

    return NGX_OK;
}
