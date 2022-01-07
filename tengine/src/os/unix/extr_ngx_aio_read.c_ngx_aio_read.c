
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u_char ;
struct aiocb {int dummy; } ;
typedef int ssize_t ;
struct TYPE_10__ {TYPE_3__* sigval_ptr; } ;
struct TYPE_11__ {TYPE_1__ sigev_value; int sigev_notify; int sigev_notify_kqueue; } ;
struct TYPE_14__ {size_t aio_fildes; size_t aio_nbytes; TYPE_2__ aio_sigevent; int * aio_buf; } ;
struct TYPE_12__ {int ready; size_t complete; int error; int active; int eof; int log; TYPE_5__ aiocb; } ;
typedef TYPE_3__ ngx_event_t ;
struct TYPE_13__ {size_t fd; int log; TYPE_3__* read; } ;
typedef TYPE_4__ ngx_connection_t ;


 int NGX_AGAIN ;
 int NGX_EINPROGRESS ;
 int NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_CRIT ;
 int NGX_LOG_DEBUG_EVENT ;
 int SIGEV_KEVENT ;
 int aio_error (TYPE_5__*) ;
 int aio_read (TYPE_5__*) ;
 int aio_return (TYPE_5__*) ;
 int ngx_errno ;
 int ngx_kqueue ;
 int ngx_log_debug1 (int ,int ,int ,char*,size_t) ;
 int ngx_log_debug2 (int ,int ,int ,char*,size_t,int) ;
 int ngx_log_error (int ,int ,int,char*) ;
 int ngx_memzero (TYPE_5__*,int) ;

ssize_t
ngx_aio_read(ngx_connection_t *c, u_char *buf, size_t size)
{
    int n;
    ngx_event_t *rev;

    rev = c->read;

    if (!rev->ready) {
        ngx_log_error(NGX_LOG_ALERT, c->log, 0, "second aio post");
        return NGX_AGAIN;
    }

    ngx_log_debug1(NGX_LOG_DEBUG_EVENT, c->log, 0,
                   "rev->complete: %d", rev->complete);
    ngx_log_debug1(NGX_LOG_DEBUG_EVENT, c->log, 0,
                   "aio size: %d", size);

    if (!rev->complete) {
        ngx_memzero(&rev->aiocb, sizeof(struct aiocb));

        rev->aiocb.aio_fildes = c->fd;
        rev->aiocb.aio_buf = buf;
        rev->aiocb.aio_nbytes = size;







        if (aio_read(&rev->aiocb) == -1) {
            ngx_log_error(NGX_LOG_CRIT, rev->log, ngx_errno,
                          "aio_read() failed");
            rev->error = 1;
            return NGX_ERROR;
        }

        ngx_log_debug1(NGX_LOG_DEBUG_EVENT, c->log, 0,
                       "aio_read: #%d OK", c->fd);

        rev->active = 1;
        rev->ready = 0;
    }

    rev->complete = 0;

    n = aio_error(&rev->aiocb);
    if (n == -1) {
        ngx_log_error(NGX_LOG_ALERT, c->log, ngx_errno, "aio_error() failed");
        rev->error = 1;
        return NGX_ERROR;
    }

    if (n != 0) {
        if (n == NGX_EINPROGRESS) {
            if (rev->ready) {
                ngx_log_error(NGX_LOG_ALERT, c->log, n,
                              "aio_read() still in progress");
                rev->ready = 0;
            }
            return NGX_AGAIN;
        }

        ngx_log_error(NGX_LOG_CRIT, c->log, n, "aio_read() failed");
        rev->error = 1;
        rev->ready = 0;
        return NGX_ERROR;
    }

    n = aio_return(&rev->aiocb);
    if (n == -1) {
        ngx_log_error(NGX_LOG_ALERT, c->log, ngx_errno,
                      "aio_return() failed");

        rev->error = 1;
        rev->ready = 0;
        return NGX_ERROR;
    }

    ngx_log_debug2(NGX_LOG_DEBUG_EVENT, rev->log, 0,
                   "aio_read: #%d %d", c->fd, n);

    if (n == 0) {
        rev->eof = 1;
        rev->ready = 0;
    } else {
        rev->ready = 1;
    }

    rev->active = 0;

    return n;
}
