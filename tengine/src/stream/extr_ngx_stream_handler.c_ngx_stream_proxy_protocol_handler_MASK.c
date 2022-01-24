#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_9__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  ngx_stream_session_t ;
struct TYPE_16__ {int /*<<< orphan*/  proxy_protocol_timeout; } ;
typedef  TYPE_1__ ngx_stream_core_srv_conf_t ;
struct TYPE_17__ {scalar_t__ timer_set; scalar_t__ ready; scalar_t__ timedout; TYPE_3__* data; } ;
typedef  TYPE_2__ ngx_event_t ;
typedef  scalar_t__ ngx_err_t ;
struct TYPE_18__ {int (* recv ) (TYPE_3__*,int /*<<< orphan*/ *,size_t) ;TYPE_9__* log; int /*<<< orphan*/  fd; int /*<<< orphan*/ * data; } ;
typedef  TYPE_3__ ngx_connection_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_19__ {char* action; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_PEEK ; 
 scalar_t__ NGX_EAGAIN ; 
 int /*<<< orphan*/  NGX_ETIMEDOUT ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_STREAM ; 
 int /*<<< orphan*/  NGX_LOG_INFO ; 
 scalar_t__ NGX_OK ; 
 int NGX_PROXY_PROTOCOL_MAX_HEADER ; 
 int /*<<< orphan*/  NGX_STREAM_BAD_REQUEST ; 
 int /*<<< orphan*/  NGX_STREAM_INTERNAL_SERVER_ERROR ; 
 int /*<<< orphan*/  NGX_STREAM_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_9__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_9__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_9__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ ngx_socket_errno ; 
 int /*<<< orphan*/  ngx_stream_core_module ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int FUNC11 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_3__*,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void
FUNC13(ngx_event_t *rev)
{
    u_char                      *p, buf[NGX_PROXY_PROTOCOL_MAX_HEADER];
    size_t                       size;
    ssize_t                      n;
    ngx_err_t                    err;
    ngx_connection_t            *c;
    ngx_stream_session_t        *s;
    ngx_stream_core_srv_conf_t  *cscf;

    c = rev->data;
    s = c->data;

    FUNC4(NGX_LOG_DEBUG_STREAM, c->log, 0,
                   "stream PROXY protocol handler");

    if (rev->timedout) {
        FUNC6(NGX_LOG_INFO, c->log, NGX_ETIMEDOUT, "client timed out");
        FUNC8(s, NGX_STREAM_OK);
        return;
    }

    n = FUNC11(c->fd, (char *) buf, sizeof(buf), MSG_PEEK);

    err = ngx_socket_errno;

    FUNC5(NGX_LOG_DEBUG_STREAM, c->log, 0, "recv(): %z", n);

    if (n == -1) {
        if (err == NGX_EAGAIN) {
            rev->ready = 0;

            if (!rev->timer_set) {
                cscf = FUNC9(s,
                                                      ngx_stream_core_module);

                FUNC0(rev, cscf->proxy_protocol_timeout);
            }

            if (FUNC3(rev, 0) != NGX_OK) {
                FUNC8(s,
                                            NGX_STREAM_INTERNAL_SERVER_ERROR);
            }

            return;
        }

        FUNC1(c, err, "recv() failed");

        FUNC8(s, NGX_STREAM_OK);
        return;
    }

    if (rev->timer_set) {
        FUNC2(rev);
    }

    p = FUNC7(c, buf, buf + n);

    if (p == NULL) {
        FUNC8(s, NGX_STREAM_BAD_REQUEST);
        return;
    }

    size = p - buf;

    if (c->recv(c, buf, size) != (ssize_t) size) {
        FUNC8(s, NGX_STREAM_INTERNAL_SERVER_ERROR);
        return;
    }

    c->log->action = "initializing session";

    FUNC10(rev);
}