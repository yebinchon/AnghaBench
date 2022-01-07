
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


typedef int ngx_int_t ;
struct TYPE_15__ {TYPE_6__* connection; int connect_port; int connect_host; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_14__ {int * connection; } ;
struct TYPE_16__ {TYPE_1__ peer; } ;
typedef TYPE_3__ ngx_http_proxy_connect_upstream_t ;
struct TYPE_17__ {TYPE_3__* u; } ;
typedef TYPE_4__ ngx_http_proxy_connect_ctx_t ;
struct TYPE_18__ {int eof; scalar_t__ kq_errno; int error; int log; scalar_t__ write; scalar_t__ active; int pending_eof; } ;
typedef TYPE_5__ ngx_event_t ;
typedef scalar_t__ ngx_err_t ;
struct TYPE_19__ {int error; int fd; } ;
typedef TYPE_6__ ngx_connection_t ;


 int MSG_PEEK ;
 scalar_t__ NGX_EAGAIN ;
 int NGX_HTTP_CLIENT_CLOSED_REQUEST ;
 int NGX_HTTP_INTERNAL_SERVER_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_INFO ;
 scalar_t__ NGX_OK ;
 int NGX_READ_EVENT ;
 int NGX_USE_KQUEUE_EVENT ;
 int NGX_USE_LEVEL_EVENT ;
 int NGX_WRITE_EVENT ;
 scalar_t__ ngx_del_event (TYPE_5__*,int ,int ) ;
 int ngx_event_flags ;
 TYPE_4__* ngx_http_get_module_ctx (TYPE_2__*,int ) ;
 int ngx_http_proxy_connect_finalize_request (TYPE_2__*,TYPE_3__*,int ) ;
 int ngx_http_proxy_connect_module ;
 int ngx_log_debug1 (int ,int ,scalar_t__,char*,int) ;
 int ngx_log_debug3 (int ,int ,int ,char*,scalar_t__,int *,int *) ;
 int ngx_log_error (int ,int ,scalar_t__,char*) ;
 scalar_t__ ngx_socket_errno ;
 int recv (int ,char*,int,int ) ;

__attribute__((used)) static void
ngx_http_proxy_connect_check_broken_connection(ngx_http_request_t *r,
    ngx_event_t *ev)
{
    int n;
    char buf[1];
    ngx_err_t err;
    ngx_int_t event;
    ngx_connection_t *c;
    ngx_http_proxy_connect_ctx_t *ctx;
    ngx_http_proxy_connect_upstream_t *u;

    ngx_log_debug3(NGX_LOG_DEBUG_HTTP, ev->log, 0,
                   "proxy_connect: check client, write event:%d, \"%V:%V\"",
                   ev->write, &r->connect_host, &r->connect_port);

    c = r->connection;
    ctx = ngx_http_get_module_ctx(r, ngx_http_proxy_connect_module);
    u = ctx->u;

    if (c->error) {
        if ((ngx_event_flags & NGX_USE_LEVEL_EVENT) && ev->active) {

            event = ev->write ? NGX_WRITE_EVENT : NGX_READ_EVENT;

            if (ngx_del_event(ev, event, 0) != NGX_OK) {
                ngx_http_proxy_connect_finalize_request(r, u,
                                               NGX_HTTP_INTERNAL_SERVER_ERROR);
                return;
            }
        }

        ngx_http_proxy_connect_finalize_request(r, u,
                                               NGX_HTTP_CLIENT_CLOSED_REQUEST);

        return;
    }
    n = recv(c->fd, buf, 1, MSG_PEEK);

    err = ngx_socket_errno;

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, ev->log, err,
                   "proxy_connect: upstream recv(): %d", n);

    if (ev->write && (n >= 0 || err == NGX_EAGAIN)) {
        return;
    }

    if ((ngx_event_flags & NGX_USE_LEVEL_EVENT) && ev->active) {

        event = ev->write ? NGX_WRITE_EVENT : NGX_READ_EVENT;

        if (ngx_del_event(ev, event, 0) != NGX_OK) {
            ngx_http_proxy_connect_finalize_request(r, u,
                                               NGX_HTTP_INTERNAL_SERVER_ERROR);
            return;
        }
    }

    if (n > 0) {
        return;
    }

    if (n == -1) {
        if (err == NGX_EAGAIN) {
            return;
        }

        ev->error = 1;

    } else {
        err = 0;
    }

    ev->eof = 1;
    c->error = 1;

    if (u->peer.connection) {
        ngx_log_error(NGX_LOG_INFO, ev->log, err,
                      "proxy_connect: client prematurely closed connection, "
                      "so upstream connection is closed too");
        ngx_http_proxy_connect_finalize_request(r, u,
                                           NGX_HTTP_CLIENT_CLOSED_REQUEST);
        return;
    }

    ngx_log_error(NGX_LOG_INFO, ev->log, err,
                  "proxy_connect: client prematurely closed connection");

    if (u->peer.connection == ((void*)0)) {
        ngx_http_proxy_connect_finalize_request(r, u,
                                           NGX_HTTP_CLIENT_CLOSED_REQUEST);
    }
}
