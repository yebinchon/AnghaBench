
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_9__ ;
typedef struct TYPE_34__ TYPE_8__ ;
typedef struct TYPE_33__ TYPE_7__ ;
typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_22__ ;
typedef struct TYPE_26__ TYPE_21__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_12__ ;
typedef struct TYPE_23__ TYPE_10__ ;


struct TYPE_32__ {TYPE_12__* log; TYPE_10__* connection; int name; } ;
typedef TYPE_6__ ngx_peer_connection_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_30__ {scalar_t__ limit; TYPE_10__* connection; int * out; int ** last; } ;
struct TYPE_25__ {int sendfile; } ;
struct TYPE_33__ {scalar_t__ (* create_request ) (TYPE_7__*) ;TYPE_5__* main_conf; TYPE_4__ writer; TYPE_1__ output; TYPE_8__* tfs_peer; TYPE_9__* data; } ;
typedef TYPE_7__ ngx_http_tfs_t ;
struct TYPE_34__ {int peer_addr_text; TYPE_6__ peer; } ;
typedef TYPE_8__ ngx_http_tfs_peer_connection_t ;
struct TYPE_35__ {TYPE_2__* connection; } ;
typedef TYPE_9__ ngx_http_request_t ;
struct TYPE_23__ {TYPE_22__* write; int log; TYPE_3__* read; TYPE_21__* pool; int sendfile; TYPE_7__* data; } ;
typedef TYPE_10__ ngx_connection_t ;
struct TYPE_31__ {int tfs_connect_timeout; } ;
struct TYPE_29__ {int log; void* handler; } ;
struct TYPE_28__ {int log; int sendfile; } ;
struct TYPE_27__ {int log; void* handler; } ;
struct TYPE_26__ {int log; } ;
struct TYPE_24__ {char* action; } ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_BUSY ;
 scalar_t__ NGX_DECLINED ;
 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_INTERNAL_SERVER_ERROR ;
 int NGX_LOG_DEBUG ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 int ngx_add_timer (TYPE_22__*,int ) ;
 TYPE_21__* ngx_create_pool (int,int ) ;
 scalar_t__ ngx_event_connect_peer (TYPE_6__*) ;
 void* ngx_http_tfs_event_handler ;
 int ngx_http_tfs_finalize_request (TYPE_9__*,TYPE_7__*,int ) ;
 int ngx_http_tfs_handle_connection_failure (TYPE_7__*,TYPE_8__*) ;
 int ngx_http_tfs_send (TYPE_9__*,TYPE_7__*) ;
 int ngx_log_error (int ,TYPE_12__*,int ,char*,...) ;
 scalar_t__ stub1 (TYPE_7__*) ;

ngx_int_t
ngx_http_tfs_connect(ngx_http_tfs_t *t)
{
    ngx_int_t rc;
    ngx_connection_t *c;
    ngx_http_request_t *r;
    ngx_peer_connection_t *p;
    ngx_http_tfs_peer_connection_t *tp;

    tp = t->tfs_peer;
    p = &tp->peer;
    r = t->data;

    p->log->action = "connecting server";

    rc = t->create_request(t);

    if (rc == NGX_ERROR) {
        ngx_log_error(NGX_LOG_ERR, p->log, 0, "create %V (%s) request failed",
            p->name, tp->peer_addr_text);
        ngx_http_tfs_finalize_request(r, t, NGX_HTTP_INTERNAL_SERVER_ERROR);
        return rc;
    }

    ngx_log_error(NGX_LOG_DEBUG, p->log, 0, "connecting %V, addr: %s",
                  p->name, tp->peer_addr_text);

    rc = ngx_event_connect_peer(p);

    if (rc == NGX_ERROR || rc == NGX_BUSY || rc == NGX_DECLINED) {
        ngx_log_error(NGX_LOG_ERR, p->log, 0,
                      "connect to (%V: %s) failed", p->name,
                      tp->peer_addr_text);
        ngx_http_tfs_handle_connection_failure(t, t->tfs_peer);
        return rc;
    }

    c = p->connection;
    c->data = t;

    c->read->handler = ngx_http_tfs_event_handler;
    c->write->handler = ngx_http_tfs_event_handler;

    c->sendfile &= r->connection->sendfile;
    t->output.sendfile = c->sendfile;

    if (c->pool == ((void*)0)) {
        c->pool = ngx_create_pool(128, r->connection->log);
        if (c->pool == ((void*)0)) {
            ngx_log_error(NGX_LOG_ERR, p->log, 0,
                          "create connection pool failed");
            ngx_http_tfs_finalize_request(r, t, NGX_HTTP_INTERNAL_SERVER_ERROR);
            return NGX_ERROR;
        }
    }

    c->log = r->connection->log;
    c->pool->log = c->log;
    c->read->log = c->log;
    c->write->log = c->log;

    t->writer.out = ((void*)0);
    t->writer.last = &t->writer.out;
    t->writer.connection = c;
    t->writer.limit = 0;

    if (rc == NGX_AGAIN) {
        ngx_add_timer(c->write, t->main_conf->tfs_connect_timeout);
        return NGX_AGAIN;
    }

    ngx_http_tfs_send(r, t);

    return NGX_OK;
}
