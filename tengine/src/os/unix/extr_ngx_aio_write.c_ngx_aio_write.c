
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
struct TYPE_14__ {size_t aio_nbytes; TYPE_2__ aio_sigevent; int * aio_buf; int aio_fildes; } ;
struct TYPE_12__ {int ready; int complete; int active; int error; int log; TYPE_5__ aiocb; } ;
typedef TYPE_3__ ngx_event_t ;
struct TYPE_13__ {int fd; TYPE_3__* write; } ;
typedef TYPE_4__ ngx_connection_t ;


 int NGX_AGAIN ;
 int NGX_EINPROGRESS ;
 int NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_CRIT ;
 int NGX_LOG_DEBUG_EVENT ;
 int SIGEV_KEVENT ;
 int aio_error (TYPE_5__*) ;
 int aio_return (TYPE_5__*) ;
 int aio_write (TYPE_5__*) ;
 int ngx_errno ;
 int ngx_kqueue ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int) ;
 int ngx_log_error (int ,int ,int,char*,...) ;
 int ngx_memzero (TYPE_5__*,int) ;

ssize_t
ngx_aio_write(ngx_connection_t *c, u_char *buf, size_t size)
{
    int n;
    ngx_event_t *wev;

    wev = c->write;

    if (!wev->ready) {
        return NGX_AGAIN;
    }

    ngx_log_debug1(NGX_LOG_DEBUG_EVENT, wev->log, 0,
                   "aio: wev->complete: %d", wev->complete);

    if (!wev->complete) {
        ngx_memzero(&wev->aiocb, sizeof(struct aiocb));

        wev->aiocb.aio_fildes = c->fd;
        wev->aiocb.aio_buf = buf;
        wev->aiocb.aio_nbytes = size;







        if (aio_write(&wev->aiocb) == -1) {
            ngx_log_error(NGX_LOG_CRIT, wev->log, ngx_errno,
                          "aio_write() failed");
            return NGX_ERROR;
        }

        ngx_log_debug0(NGX_LOG_DEBUG_EVENT, wev->log, 0, "aio_write: OK");

        wev->active = 1;
        wev->ready = 0;
    }

    wev->complete = 0;

    n = aio_error(&wev->aiocb);
    if (n == -1) {
        ngx_log_error(NGX_LOG_CRIT, wev->log, ngx_errno, "aio_error() failed");
        wev->error = 1;
        return NGX_ERROR;
    }

    if (n != 0) {
        if (n == NGX_EINPROGRESS) {
            if (wev->ready) {
                ngx_log_error(NGX_LOG_ALERT, wev->log, n,
                              "aio_write() still in progress");
                wev->ready = 0;
            }
            return NGX_AGAIN;
        }

        ngx_log_error(NGX_LOG_CRIT, wev->log, n, "aio_write() failed");
        wev->error = 1;
        wev->ready = 0;


        n = aio_return(&wev->aiocb);
        if (n == -1) {
            ngx_log_error(NGX_LOG_ALERT, wev->log, ngx_errno,
                          "aio_return() failed");
        }

        ngx_log_error(NGX_LOG_CRIT, wev->log, n, "aio_return() %d", n);


        return NGX_ERROR;
    }

    n = aio_return(&wev->aiocb);
    if (n == -1) {
        ngx_log_error(NGX_LOG_ALERT, wev->log, ngx_errno,
                      "aio_return() failed");

        wev->error = 1;
        wev->ready = 0;
        return NGX_ERROR;
    }


    ngx_log_debug1(NGX_LOG_DEBUG_EVENT, wev->log, 0, "aio_write: %d", n);

    wev->active = 0;
    wev->ready = 1;

    return n;
}
