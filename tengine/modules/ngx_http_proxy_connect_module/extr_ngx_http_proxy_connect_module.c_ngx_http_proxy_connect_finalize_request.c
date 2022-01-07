
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_14__ {TYPE_2__* connection; scalar_t__ keepalive; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_16__ {TYPE_10__* connection; int * sockaddr; int data; int (* free ) (TYPE_5__*,int ,int ) ;} ;
struct TYPE_15__ {scalar_t__ connected; TYPE_5__ peer; TYPE_1__* resolved; } ;
typedef TYPE_4__ ngx_http_proxy_connect_upstream_t ;
struct TYPE_17__ {char* action; } ;
struct TYPE_13__ {TYPE_6__* log; } ;
struct TYPE_12__ {int * ctx; } ;
struct TYPE_11__ {scalar_t__ fd; scalar_t__ pool; } ;


 scalar_t__ NGX_DECLINED ;
 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_HTTP_CLIENT_CLOSED_REQUEST ;
 scalar_t__ NGX_HTTP_REQUEST_TIME_OUT ;
 scalar_t__ NGX_HTTP_SPECIAL_RESPONSE ;
 int NGX_LOG_DEBUG_HTTP ;
 int ngx_close_connection (TYPE_10__*) ;
 int ngx_destroy_pool (scalar_t__) ;
 int ngx_http_finalize_request (TYPE_3__*,scalar_t__) ;
 int ngx_log_debug1 (int ,TYPE_6__*,int ,char*,scalar_t__) ;
 int ngx_resolve_name_done (int *) ;
 int stub1 (TYPE_5__*,int ,int ) ;

__attribute__((used)) static void
ngx_http_proxy_connect_finalize_request(ngx_http_request_t *r,
    ngx_http_proxy_connect_upstream_t *u, ngx_int_t rc)
{
    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "proxy_connect: finalize upstream request: %i", rc);

    r->keepalive = 0;

    if (u->resolved && u->resolved->ctx) {
        ngx_resolve_name_done(u->resolved->ctx);
        u->resolved->ctx = ((void*)0);
    }

    if (u->peer.free && u->peer.sockaddr) {
        u->peer.free(&u->peer, u->peer.data, 0);
        u->peer.sockaddr = ((void*)0);
    }

    if (u->peer.connection) {

        ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "proxy_connect: close upstream connection: %d",
                       u->peer.connection->fd);

        if (u->peer.connection->pool) {
            ngx_destroy_pool(u->peer.connection->pool);
        }

        ngx_close_connection(u->peer.connection);
    }

    u->peer.connection = ((void*)0);

    if (rc == NGX_DECLINED) {
        return;
    }

    r->connection->log->action = "sending to client";

    if (rc == NGX_HTTP_REQUEST_TIME_OUT
        || rc == NGX_HTTP_CLIENT_CLOSED_REQUEST)
    {
        ngx_http_finalize_request(r, rc);
        return;
    }

    if (u->connected && rc >= NGX_HTTP_SPECIAL_RESPONSE) {
        rc = NGX_ERROR;
    }

    ngx_http_finalize_request(r, rc);
}
