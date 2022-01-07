
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
typedef scalar_t__ ssize_t ;
struct TYPE_5__ {scalar_t__ available; size_t kq_errno; int eof; int error; scalar_t__ ready; scalar_t__ pending_eof; } ;
typedef TYPE_1__ ngx_event_t ;
typedef scalar_t__ ngx_err_t ;
struct TYPE_6__ {int log; scalar_t__ fd; TYPE_1__* read; } ;
typedef TYPE_2__ ngx_connection_t ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_EAGAIN ;
 scalar_t__ NGX_EINTR ;
 scalar_t__ NGX_ERROR ;
 int NGX_LOG_DEBUG_EVENT ;
 int NGX_USE_EPOLL_EVENT ;
 int NGX_USE_GREEDY_EVENT ;
 int NGX_USE_KQUEUE_EVENT ;
 scalar_t__ ngx_connection_error (TYPE_2__*,scalar_t__,char*) ;
 int ngx_event_flags ;
 int ngx_log_debug0 (int ,int ,scalar_t__,char*) ;
 int ngx_log_debug2 (int ,int ,int ,char*,scalar_t__,scalar_t__) ;
 int ngx_log_debug3 (int ,int ,int ,char*,scalar_t__,scalar_t__,size_t) ;
 int ngx_set_socket_errno (size_t) ;
 scalar_t__ ngx_socket_errno ;
 scalar_t__ ngx_use_epoll_rdhup ;
 scalar_t__ recv (scalar_t__,int *,size_t,int ) ;

ssize_t
ngx_unix_recv(ngx_connection_t *c, u_char *buf, size_t size)
{
    ssize_t n;
    ngx_err_t err;
    ngx_event_t *rev;

    rev = c->read;
    do {
        n = recv(c->fd, buf, size, 0);

        ngx_log_debug3(NGX_LOG_DEBUG_EVENT, c->log, 0,
                       "recv: fd:%d %z of %uz", c->fd, n, size);

        if (n == 0) {
            rev->ready = 0;
            rev->eof = 1;
            return 0;
        }

        if (n > 0) {
            if ((size_t) n < size
                && !(ngx_event_flags & NGX_USE_GREEDY_EVENT))
            {
                rev->ready = 0;
            }

            return n;
        }

        err = ngx_socket_errno;

        if (err == NGX_EAGAIN || err == NGX_EINTR) {
            ngx_log_debug0(NGX_LOG_DEBUG_EVENT, c->log, err,
                           "recv() not ready");
            n = NGX_AGAIN;

        } else {
            n = ngx_connection_error(c, err, "recv() failed");
            break;
        }

    } while (err == NGX_EINTR);

    rev->ready = 0;

    if (n == NGX_ERROR) {
        rev->error = 1;
    }

    return n;
}
