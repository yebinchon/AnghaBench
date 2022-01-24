#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
typedef  scalar_t__ ssize_t ;
struct TYPE_17__ {scalar_t__ state; scalar_t__ (* init ) (TYPE_3__*) ;TYPE_4__* check_data; TYPE_1__* check_peer_addr; int /*<<< orphan*/  pool; } ;
typedef  TYPE_3__ ngx_http_upstream_check_peer_t ;
struct TYPE_16__ {scalar_t__ last; scalar_t__ pos; } ;
struct TYPE_18__ {TYPE_2__ send; } ;
typedef  TYPE_4__ ngx_http_upstream_check_ctx_t ;
struct TYPE_19__ {int /*<<< orphan*/  log; TYPE_6__* data; } ;
typedef  TYPE_5__ ngx_event_t ;
typedef  int /*<<< orphan*/  ngx_err_t ;
struct TYPE_20__ {scalar_t__ (* send ) (TYPE_6__*,scalar_t__,scalar_t__) ;int error; int /*<<< orphan*/  requests; int /*<<< orphan*/  log; int /*<<< orphan*/  write; int /*<<< orphan*/ * pool; TYPE_3__* data; } ;
typedef  TYPE_6__ ngx_connection_t ;
struct TYPE_15__ {int /*<<< orphan*/  name; } ;
struct TYPE_14__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 scalar_t__ NGX_AGAIN ; 
 scalar_t__ NGX_HTTP_CHECK_CONNECT_DONE ; 
 scalar_t__ NGX_HTTP_CHECK_SEND_DONE ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 scalar_t__ NGX_OK ; 
 TYPE_13__* ngx_cycle ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 TYPE_4__* FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ngx_socket_errno ; 
 scalar_t__ FUNC8 (TYPE_3__*) ; 
 scalar_t__ FUNC9 (TYPE_6__*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC10(ngx_event_t *event)
{
    ssize_t                         size;
    ngx_connection_t               *c;
    ngx_http_upstream_check_ctx_t  *ctx;
    ngx_http_upstream_check_peer_t *peer;

    if (FUNC2()) {
        return;
    }

    c = event->data;
    peer = c->data;

    FUNC4(NGX_LOG_DEBUG_HTTP, c->log, 0, "http check send.");

    if (c->pool == NULL) {
        FUNC6(NGX_LOG_ERR, event->log, 0,
                      "check pool NULL with peer: %V ",
                      &peer->check_peer_addr->name);

        goto check_send_fail;
    }

    if (peer->state != NGX_HTTP_CHECK_CONNECT_DONE) {
        if (FUNC0(c->write, 0) != NGX_OK) {

            FUNC6(NGX_LOG_ERR, event->log, 0,
                          "check handle write event error with peer: %V ",
                          &peer->check_peer_addr->name);

            goto check_send_fail;
        }

        return;
    }

    if (peer->check_data == NULL) {

        peer->check_data = FUNC7(peer->pool,
                                       sizeof(ngx_http_upstream_check_ctx_t));
        if (peer->check_data == NULL) {
            goto check_send_fail;
        }

        if (peer->init == NULL || peer->init(peer) != NGX_OK) {

            FUNC6(NGX_LOG_ERR, event->log, 0,
                          "check init error with peer: %V ",
                          &peer->check_peer_addr->name);

            goto check_send_fail;
        }
    }

    ctx = peer->check_data;

    FUNC5(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "http check send total: %z",
                   ctx->send.last - ctx->send.pos);

    while (ctx->send.pos < ctx->send.last) {

        size = c->send(c, ctx->send.pos, ctx->send.last - ctx->send.pos);

#if (NGX_DEBUG)
        {
        ngx_err_t  err;

        err = (size >=0) ? 0 : ngx_socket_errno;
        ngx_log_error(NGX_LOG_DEBUG, ngx_cycle->log, err,
                       "http check send size: %z, total: %z",
                       size, ctx->send.last - ctx->send.pos);
        }
#endif

        if (size >= 0) {
            ctx->send.pos += size;
        } else if (size == NGX_AGAIN) {
            return;
        } else {
            c->error = 1;
            goto check_send_fail;
        }
    }

    if (ctx->send.pos == ctx->send.last) {
        FUNC4(NGX_LOG_DEBUG_HTTP, c->log, 0, "http check send done.");
        peer->state = NGX_HTTP_CHECK_SEND_DONE;
        c->requests++;
    }

    return;

check_send_fail:
    FUNC3(peer, 0);
    FUNC1(peer);
}