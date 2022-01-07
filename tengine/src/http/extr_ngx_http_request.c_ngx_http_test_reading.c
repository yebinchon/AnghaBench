
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int socklen_t ;
struct TYPE_8__ {scalar_t__ stream; TYPE_3__* connection; } ;
typedef TYPE_1__ ngx_http_request_t ;
struct TYPE_9__ {int eof; scalar_t__ kq_errno; int error; scalar_t__ active; int pending_eof; } ;
typedef TYPE_2__ ngx_event_t ;
typedef scalar_t__ ngx_err_t ;
struct TYPE_10__ {int error; int log; int fd; TYPE_2__* read; } ;
typedef TYPE_3__ ngx_connection_t ;


 int MSG_PEEK ;
 scalar_t__ NGX_EAGAIN ;
 int NGX_HTTP_CLIENT_CLOSED_REQUEST ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_INFO ;
 scalar_t__ NGX_OK ;
 int NGX_READ_EVENT ;
 int NGX_USE_EPOLL_EVENT ;
 int NGX_USE_KQUEUE_EVENT ;
 int NGX_USE_LEVEL_EVENT ;
 int SOL_SOCKET ;
 int SO_ERROR ;
 int getsockopt (int ,int ,int ,void*,int*) ;
 scalar_t__ ngx_del_event (TYPE_2__*,int ,int ) ;
 int ngx_event_flags ;
 int ngx_http_close_request (TYPE_1__*,int ) ;
 int ngx_http_finalize_request (TYPE_1__*,int ) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_error (int ,int ,scalar_t__,char*) ;
 scalar_t__ ngx_socket_errno ;
 scalar_t__ ngx_use_epoll_rdhup ;
 int recv (int ,char*,int,int ) ;

void
ngx_http_test_reading(ngx_http_request_t *r)
{
    int n;
    char buf[1];
    ngx_err_t err;
    ngx_event_t *rev;
    ngx_connection_t *c;

    c = r->connection;
    rev = c->read;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, c->log, 0, "http test reading");
    n = recv(c->fd, buf, 1, MSG_PEEK);

    if (n == 0) {
        rev->eof = 1;
        c->error = 1;
        err = 0;

        goto closed;

    } else if (n == -1) {
        err = ngx_socket_errno;

        if (err != NGX_EAGAIN) {
            rev->eof = 1;
            c->error = 1;

            goto closed;
        }
    }



    if ((ngx_event_flags & NGX_USE_LEVEL_EVENT) && rev->active) {

        if (ngx_del_event(rev, NGX_READ_EVENT, 0) != NGX_OK) {
            ngx_http_close_request(r, 0);
        }
    }

    return;

closed:

    if (err) {
        rev->error = 1;
    }

    ngx_log_error(NGX_LOG_INFO, c->log, err,
                  "client prematurely closed connection");

    ngx_http_finalize_request(r, NGX_HTTP_CLIENT_CLOSED_REQUEST);
}
