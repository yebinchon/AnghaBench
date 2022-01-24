#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct iovec {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ off_t ;
struct TYPE_19__ {int nalloc; scalar_t__ size; struct iovec* iovs; } ;
typedef  TYPE_2__ ngx_iovec_t ;
struct TYPE_20__ {int error; scalar_t__ ready; int /*<<< orphan*/  kq_errno; scalar_t__ pending_eof; } ;
typedef  TYPE_3__ ngx_event_t ;
struct TYPE_21__ {int /*<<< orphan*/  sent; int /*<<< orphan*/  log; TYPE_3__* write; } ;
typedef  TYPE_4__ ngx_connection_t ;
struct TYPE_22__ {TYPE_1__* buf; } ;
typedef  TYPE_5__ ngx_chain_t ;
struct TYPE_18__ {int /*<<< orphan*/  file_last; int /*<<< orphan*/  file_pos; int /*<<< orphan*/  file; int /*<<< orphan*/  last; int /*<<< orphan*/  pos; int /*<<< orphan*/  start; scalar_t__ in_file; int /*<<< orphan*/  recycled; int /*<<< orphan*/  temporary; } ;

/* Variables and functions */
 scalar_t__ NGX_AGAIN ; 
 TYPE_5__* NGX_CHAIN_ERROR ; 
 scalar_t__ NGX_ERROR ; 
 int NGX_IOVS_PREALLOCATE ; 
 int /*<<< orphan*/  NGX_LOG_ALERT ; 
 scalar_t__ NGX_MAX_SIZE_T_VALUE ; 
 int NGX_USE_KQUEUE_EVENT ; 
 TYPE_5__* FUNC0 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int ngx_event_flags ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC4 (TYPE_2__*,TYPE_5__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ ngx_pagesize ; 
 scalar_t__ FUNC5 (TYPE_4__*,TYPE_2__*) ; 

ngx_chain_t *
FUNC6(ngx_connection_t *c, ngx_chain_t *in, off_t limit)
{
    ssize_t        n, sent;
    off_t          send, prev_send;
    ngx_chain_t   *cl;
    ngx_event_t   *wev;
    ngx_iovec_t    vec;
    struct iovec   iovs[NGX_IOVS_PREALLOCATE];

    wev = c->write;

    if (!wev->ready) {
        return in;
    }

#if (NGX_HAVE_KQUEUE)

    if ((ngx_event_flags & NGX_USE_KQUEUE_EVENT) && wev->pending_eof) {
        (void) ngx_connection_error(c, wev->kq_errno,
                               "kevent() reported about an closed connection");
        wev->error = 1;
        return NGX_CHAIN_ERROR;
    }

#endif

    /* the maximum limit size is the maximum size_t value - the page size */

    if (limit == 0 || limit > (off_t) (NGX_MAX_SIZE_T_VALUE - ngx_pagesize)) {
        limit = NGX_MAX_SIZE_T_VALUE - ngx_pagesize;
    }

    send = 0;

    vec.iovs = iovs;
    vec.nalloc = NGX_IOVS_PREALLOCATE;

    for ( ;; ) {
        prev_send = send;

        /* create the iovec and coalesce the neighbouring bufs */

        cl = FUNC4(&vec, in, limit - send, c->log);

        if (cl == NGX_CHAIN_ERROR) {
            return NGX_CHAIN_ERROR;
        }

        if (cl && cl->buf->in_file) {
            FUNC3(NGX_LOG_ALERT, c->log, 0,
                          "file buf in writev "
                          "t:%d r:%d f:%d %p %p-%p %p %O-%O",
                          cl->buf->temporary,
                          cl->buf->recycled,
                          cl->buf->in_file,
                          cl->buf->start,
                          cl->buf->pos,
                          cl->buf->last,
                          cl->buf->file,
                          cl->buf->file_pos,
                          cl->buf->file_last);

            FUNC2();

            return NGX_CHAIN_ERROR;
        }

        send += vec.size;

        n = FUNC5(c, &vec);

        if (n == NGX_ERROR) {
            return NGX_CHAIN_ERROR;
        }

        sent = (n == NGX_AGAIN) ? 0 : n;

        c->sent += sent;

        in = FUNC0(in, sent);

        if (send - prev_send != sent) {
            wev->ready = 0;
            return in;
        }

        if (send >= limit || in == NULL) {
            return in;
        }
    }
}