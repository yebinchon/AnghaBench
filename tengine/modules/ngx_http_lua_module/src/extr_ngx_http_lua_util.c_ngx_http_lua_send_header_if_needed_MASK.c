#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_int_t ;
struct TYPE_11__ {scalar_t__ status; } ;
struct TYPE_12__ {TYPE_1__ headers_out; scalar_t__ header_sent; } ;
typedef  TYPE_2__ ngx_http_request_t ;
struct TYPE_13__ {int header_sent; int /*<<< orphan*/  buffering; int /*<<< orphan*/  headers_set; int /*<<< orphan*/  mime_set; } ;
typedef  TYPE_3__ ngx_http_lua_ctx_t ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 scalar_t__ NGX_HTTP_OK ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 

ngx_int_t
FUNC5(ngx_http_request_t *r,
    ngx_http_lua_ctx_t *ctx)
{
    ngx_int_t            rc;

    FUNC0("send header if needed: %d", r->header_sent || ctx->header_sent);

    if (!r->header_sent && !ctx->header_sent) {
        if (r->headers_out.status == 0) {
            r->headers_out.status = NGX_HTTP_OK;
        }

        if (!ctx->mime_set
            && FUNC3(r, ctx) != NGX_OK)
        {
            return NGX_ERROR;
        }

        if (!ctx->headers_set) {
            FUNC2(r);
            FUNC1(r);
        }

        if (!ctx->buffering) {
            FUNC0("sending headers");
            rc = FUNC4(r);
            ctx->header_sent = 1;
            return rc;
        }
    }

    return NGX_OK;
}