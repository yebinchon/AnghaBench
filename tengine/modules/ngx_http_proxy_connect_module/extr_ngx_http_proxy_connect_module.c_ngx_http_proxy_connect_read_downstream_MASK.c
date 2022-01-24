#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_2__* connection; } ;
typedef  TYPE_3__ ngx_http_request_t ;
struct TYPE_13__ {int /*<<< orphan*/  u; } ;
typedef  TYPE_4__ ngx_http_proxy_connect_ctx_t ;
struct TYPE_11__ {int timedout; int /*<<< orphan*/  log; TYPE_1__* read; } ;
struct TYPE_10__ {scalar_t__ timedout; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_HTTP_REQUEST_TIME_OUT ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 TYPE_4__* FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_proxy_connect_module ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC4(ngx_http_request_t *r)
{
    ngx_http_proxy_connect_ctx_t       *ctx;

    ctx = FUNC0(r, ngx_http_proxy_connect_module);

    if (r->connection->read->timedout) {
        r->connection->timedout = 1;
        FUNC3(NGX_LOG_ERR, r->connection->log, 0,
                      "proxy_connect: client read timed out");
        FUNC1(r, ctx->u,
                                                NGX_HTTP_REQUEST_TIME_OUT);
        return;
    }

    FUNC2(r, 0, 0);
}