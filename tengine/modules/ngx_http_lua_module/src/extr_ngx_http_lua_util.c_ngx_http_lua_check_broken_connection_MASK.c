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
typedef  scalar_t__ ngx_int_t ;
struct TYPE_7__ {scalar_t__ stream; TYPE_3__* connection; int /*<<< orphan*/  uri; } ;
typedef  TYPE_1__ ngx_http_request_t ;
struct TYPE_8__ {int eof; scalar_t__ kq_errno; int error; int /*<<< orphan*/  log; scalar_t__ write; scalar_t__ active; int /*<<< orphan*/  pending_eof; } ;
typedef  TYPE_2__ ngx_event_t ;
typedef  scalar_t__ ngx_err_t ;
struct TYPE_9__ {int /*<<< orphan*/  fd; scalar_t__ error; } ;
typedef  TYPE_3__ ngx_connection_t ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_PEEK ; 
 scalar_t__ NGX_EAGAIN ; 
 scalar_t__ NGX_HTTP_CLIENT_CLOSED_REQUEST ; 
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_LOG_INFO ; 
 scalar_t__ NGX_OK ; 
 scalar_t__ NGX_READ_EVENT ; 
 int NGX_USE_KQUEUE_EVENT ; 
 int NGX_USE_LEVEL_EVENT ; 
 scalar_t__ NGX_WRITE_EVENT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int ngx_event_flags ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,char*) ; 
 scalar_t__ ngx_socket_errno ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 

ngx_int_t
FUNC6(ngx_http_request_t *r, ngx_event_t *ev)
{
    int                  n;
    char                 buf[1];
    ngx_err_t            err;
    ngx_int_t            event;
    ngx_connection_t     *c;

    FUNC3(NGX_LOG_DEBUG_HTTP, ev->log, 0,
                   "http lua check client, write event:%d, \"%V\"",
                   ev->write, &r->uri);

    c = r->connection;

    if (c->error) {
        if ((ngx_event_flags & NGX_USE_LEVEL_EVENT) && ev->active) {

            event = ev->write ? NGX_WRITE_EVENT : NGX_READ_EVENT;

            if (FUNC1(ev, event, 0) != NGX_OK) {
                return NGX_HTTP_INTERNAL_SERVER_ERROR;
            }
        }

        return NGX_HTTP_CLIENT_CLOSED_REQUEST;
    }

#if (NGX_HTTP_V2)
    if (r->stream) {
        return NGX_OK;
    }
#endif

#if (NGX_HAVE_KQUEUE)

    if (ngx_event_flags & NGX_USE_KQUEUE_EVENT) {

        if (!ev->pending_eof) {
            return NGX_OK;
        }

        ev->eof = 1;

        if (ev->kq_errno) {
            ev->error = 1;
        }

        ngx_log_error(NGX_LOG_INFO, ev->log, ev->kq_errno,
                      "kevent() reported that client prematurely closed "
                      "connection");

        return NGX_HTTP_CLIENT_CLOSED_REQUEST;
    }

#endif

    n = FUNC5(c->fd, buf, 1, MSG_PEEK);

    err = ngx_socket_errno;

    FUNC2(NGX_LOG_DEBUG_HTTP, ev->log, err,
                   "http lua recv(): %d", n);

    if (ev->write && (n >= 0 || err == NGX_EAGAIN)) {
        return NGX_OK;
    }

    if ((ngx_event_flags & NGX_USE_LEVEL_EVENT) && ev->active) {
        FUNC0("event is active");

        event = ev->write ? NGX_WRITE_EVENT : NGX_READ_EVENT;

#if 1
        if (FUNC1(ev, event, 0) != NGX_OK) {
            return NGX_HTTP_INTERNAL_SERVER_ERROR;
        }
#endif
    }

    FUNC0("HERE %d", (int) n);

    if (n > 0) {
        return NGX_OK;
    }

    if (n == -1) {
        if (err == NGX_EAGAIN) {
            FUNC0("HERE");
            return NGX_OK;
        }

        ev->error = 1;

    } else { /* n == 0 */
        err = 0;
    }

    ev->eof = 1;

    FUNC4(NGX_LOG_INFO, ev->log, err,
                  "client prematurely closed connection");

    return NGX_HTTP_CLIENT_CLOSED_REQUEST;
}