#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int ssize_t ;
struct TYPE_8__ {int /*<<< orphan*/  size; int /*<<< orphan*/  count; int /*<<< orphan*/  iovs; } ;
typedef  TYPE_2__ ngx_iovec_t ;
typedef  int ngx_err_t ;
struct TYPE_9__ {TYPE_1__* write; int /*<<< orphan*/  log; int /*<<< orphan*/  fd; } ;
typedef  TYPE_3__ ngx_connection_t ;
struct TYPE_7__ {int error; } ;

/* Variables and functions */
 int NGX_AGAIN ; 
#define  NGX_EAGAIN 129 
#define  NGX_EINTR 128 
 int NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_EVENT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int,char*) ; 
 int ngx_errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ssize_t
FUNC4(ngx_connection_t *c, ngx_iovec_t *vec)
{
    ssize_t    n;
    ngx_err_t  err;

eintr:

    n = FUNC3(c->fd, vec->iovs, vec->count);

    FUNC2(NGX_LOG_DEBUG_EVENT, c->log, 0,
                   "writev: %z of %uz", n, vec->size);

    if (n == -1) {
        err = ngx_errno;

        switch (err) {
        case NGX_EAGAIN:
            FUNC1(NGX_LOG_DEBUG_EVENT, c->log, err,
                           "writev() not ready");
            return NGX_AGAIN;

        case NGX_EINTR:
            FUNC1(NGX_LOG_DEBUG_EVENT, c->log, err,
                           "writev() was interrupted");
            goto eintr;

        default:
            c->write->error = 1;
            FUNC0(c, err, "writev() failed");
            return NGX_ERROR;
        }
    }

    return n;
}