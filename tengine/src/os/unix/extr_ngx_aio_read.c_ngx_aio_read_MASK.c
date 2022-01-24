#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct aiocb {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_10__ {TYPE_3__* sigval_ptr; } ;
struct TYPE_11__ {TYPE_1__ sigev_value; int /*<<< orphan*/  sigev_notify; int /*<<< orphan*/  sigev_notify_kqueue; } ;
struct TYPE_14__ {size_t aio_fildes; size_t aio_nbytes; TYPE_2__ aio_sigevent; int /*<<< orphan*/ * aio_buf; } ;
struct TYPE_12__ {int ready; size_t complete; int error; int active; int eof; int /*<<< orphan*/  log; TYPE_5__ aiocb; } ;
typedef  TYPE_3__ ngx_event_t ;
struct TYPE_13__ {size_t fd; int /*<<< orphan*/  log; TYPE_3__* read; } ;
typedef  TYPE_4__ ngx_connection_t ;

/* Variables and functions */
 int NGX_AGAIN ; 
 int NGX_EINPROGRESS ; 
 int NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_ALERT ; 
 int /*<<< orphan*/  NGX_LOG_CRIT ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_EVENT ; 
 int /*<<< orphan*/  SIGEV_KEVENT ; 
 int FUNC0 (TYPE_5__*) ; 
 int FUNC1 (TYPE_5__*) ; 
 int FUNC2 (TYPE_5__*) ; 
 int ngx_errno ; 
 int /*<<< orphan*/  ngx_kqueue ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int) ; 

ssize_t
FUNC7(ngx_connection_t *c, u_char *buf, size_t size)
{
    int           n;
    ngx_event_t  *rev;

    rev = c->read;

    if (!rev->ready) {
        FUNC5(NGX_LOG_ALERT, c->log, 0, "second aio post");
        return NGX_AGAIN;
    }

    FUNC3(NGX_LOG_DEBUG_EVENT, c->log, 0,
                   "rev->complete: %d", rev->complete);
    FUNC3(NGX_LOG_DEBUG_EVENT, c->log, 0,
                   "aio size: %d", size);

    if (!rev->complete) {
        FUNC6(&rev->aiocb, sizeof(struct aiocb));

        rev->aiocb.aio_fildes = c->fd;
        rev->aiocb.aio_buf = buf;
        rev->aiocb.aio_nbytes = size;

#if (NGX_HAVE_KQUEUE)
        rev->aiocb.aio_sigevent.sigev_notify_kqueue = ngx_kqueue;
        rev->aiocb.aio_sigevent.sigev_notify = SIGEV_KEVENT;
        rev->aiocb.aio_sigevent.sigev_value.sigval_ptr = rev;
#endif

        if (FUNC1(&rev->aiocb) == -1) {
            FUNC5(NGX_LOG_CRIT, rev->log, ngx_errno,
                          "aio_read() failed");
            rev->error = 1;
            return NGX_ERROR;
        }

        FUNC3(NGX_LOG_DEBUG_EVENT, c->log, 0,
                       "aio_read: #%d OK", c->fd);

        rev->active = 1;
        rev->ready = 0;
    }

    rev->complete = 0;

    n = FUNC0(&rev->aiocb);
    if (n == -1) {
        FUNC5(NGX_LOG_ALERT, c->log, ngx_errno, "aio_error() failed");
        rev->error = 1;
        return NGX_ERROR;
    }

    if (n != 0) {
        if (n == NGX_EINPROGRESS) {
            if (rev->ready) {
                FUNC5(NGX_LOG_ALERT, c->log, n,
                              "aio_read() still in progress");
                rev->ready = 0;
            }
            return NGX_AGAIN;
        }

        FUNC5(NGX_LOG_CRIT, c->log, n, "aio_read() failed");
        rev->error = 1;
        rev->ready = 0;
        return NGX_ERROR;
    }

    n = FUNC2(&rev->aiocb);
    if (n == -1) {
        FUNC5(NGX_LOG_ALERT, c->log, ngx_errno,
                      "aio_return() failed");

        rev->error = 1;
        rev->ready = 0;
        return NGX_ERROR;
    }

    FUNC4(NGX_LOG_DEBUG_EVENT, rev->log, 0,
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