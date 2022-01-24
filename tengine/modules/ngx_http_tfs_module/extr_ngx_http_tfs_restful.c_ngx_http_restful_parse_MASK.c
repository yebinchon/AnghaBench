#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_int_t ;
struct TYPE_13__ {int version; } ;
typedef  TYPE_2__ ngx_http_tfs_restful_ctx_t ;
struct TYPE_14__ {TYPE_1__* connection; } ;
typedef  TYPE_3__ ngx_http_request_t ;
struct TYPE_12__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 scalar_t__ NGX_HTTP_BAD_REQUEST ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 scalar_t__ FUNC0 (TYPE_3__*,TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_3__*,TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

ngx_int_t
FUNC4(ngx_http_request_t *r, ngx_http_tfs_restful_ctx_t *ctx)
{
    ngx_int_t  rc;

    rc = FUNC2(r, ctx);
    if (rc == NGX_ERROR) {
        FUNC3(NGX_LOG_ERR, r->connection->log, 0, "parse uri failed");
        return NGX_HTTP_BAD_REQUEST;
    }

    if (ctx->version == 1) {
        rc = FUNC1(r, ctx);
    }

    if (ctx->version == 2) {
        rc = FUNC0(r, ctx);
    }

    return rc;
}