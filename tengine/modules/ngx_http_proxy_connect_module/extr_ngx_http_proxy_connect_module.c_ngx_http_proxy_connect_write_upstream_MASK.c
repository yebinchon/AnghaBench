#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_16__ ;

/* Type definitions */
struct TYPE_21__ {TYPE_1__* connection; } ;
typedef  TYPE_3__ ngx_http_request_t ;
struct TYPE_20__ {int /*<<< orphan*/  name; TYPE_6__* connection; } ;
struct TYPE_22__ {TYPE_2__ peer; scalar_t__ connected; } ;
typedef  TYPE_4__ ngx_http_proxy_connect_upstream_t ;
struct TYPE_23__ {int /*<<< orphan*/  send_established_done; int /*<<< orphan*/  send_established; } ;
typedef  TYPE_5__ ngx_http_proxy_connect_ctx_t ;
struct TYPE_24__ {TYPE_16__* write; int /*<<< orphan*/  log; } ;
typedef  TYPE_6__ ngx_connection_t ;
struct TYPE_19__ {int /*<<< orphan*/  log; } ;
struct TYPE_18__ {scalar_t__ timer_set; scalar_t__ timedout; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_HTTP_BAD_GATEWAY ; 
 int /*<<< orphan*/  NGX_HTTP_GATEWAY_TIME_OUT ; 
 int /*<<< orphan*/  NGX_HTTP_INTERNAL_SERVER_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_16__*) ; 
 scalar_t__ FUNC1 (TYPE_16__*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_proxy_connect_module ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(ngx_http_request_t *r,
    ngx_http_proxy_connect_upstream_t *u)
{
    ngx_connection_t  *c;
    ngx_http_proxy_connect_ctx_t          *ctx;

    c = u->peer.connection;

    FUNC7(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "proxy_connect: upstream write handler");

    if (c->write->timedout) {
        FUNC8(NGX_LOG_ERR, c->log, 0,
                      "proxy_connect: upstream %s timed out (peer:%V)",
                      u->connected ? "write" : "connect", u->peer.name);
        FUNC3(r, u,
                                                NGX_HTTP_GATEWAY_TIME_OUT);
        return;
    }

    ctx = FUNC2(r, ngx_http_proxy_connect_module);

    if (c->write->timer_set) {
        FUNC0(c->write);
    }

    if (!ctx->send_established &&
        FUNC5(c) != NGX_OK)
    {
        FUNC3(r, u, NGX_HTTP_BAD_GATEWAY);
        return;
    }

    if (!ctx->send_established) {
        FUNC4(r);
        return;
    }

    if (!ctx->send_established_done) {
        if (FUNC1(c->write, 0) != NGX_OK) {
            FUNC3(r, u,
                                               NGX_HTTP_INTERNAL_SERVER_ERROR);
            return;
        }

        return;
    }

    FUNC6(r, 0, 1);
}