#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_8__ ;
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {scalar_t__ data; int /*<<< orphan*/  handler; } ;
typedef  TYPE_3__ ngx_pool_cleanup_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_25__ {int /*<<< orphan*/  last_modified; } ;
typedef  TYPE_4__ ngx_http_xslt_filter_loc_conf_t ;
struct TYPE_26__ {int done; } ;
typedef  TYPE_5__ ngx_http_xslt_filter_ctx_t ;
struct TYPE_23__ {TYPE_1__* content_length; scalar_t__ content_length_n; } ;
struct TYPE_27__ {scalar_t__ header_only; TYPE_2__ headers_out; struct TYPE_27__* main; int /*<<< orphan*/  pool; } ;
typedef  TYPE_6__ ngx_http_request_t ;
struct TYPE_28__ {int /*<<< orphan*/ * next; TYPE_8__* buf; } ;
typedef  TYPE_7__ ngx_chain_t ;
struct TYPE_29__ {scalar_t__ pos; scalar_t__ last; } ;
typedef  TYPE_8__ ngx_buf_t ;
struct TYPE_22__ {scalar_t__ hash; } ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_HTTP_INTERNAL_SERVER_ERROR ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 scalar_t__ FUNC3 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC4 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_6__*,TYPE_7__*) ; 
 scalar_t__ FUNC6 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 
 int /*<<< orphan*/  ngx_http_xslt_cleanup ; 
 int /*<<< orphan*/  ngx_http_xslt_filter_module ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ngx_int_t
FUNC9(ngx_http_request_t *r, ngx_http_xslt_filter_ctx_t *ctx,
    ngx_buf_t *b)
{
    ngx_int_t                         rc;
    ngx_chain_t                       out;
    ngx_pool_cleanup_t               *cln;
    ngx_http_xslt_filter_loc_conf_t  *conf;

    ctx->done = 1;

    if (b == NULL) {
        return FUNC3(r, &ngx_http_xslt_filter_module,
                                               NGX_HTTP_INTERNAL_SERVER_ERROR);
    }

    cln = FUNC8(r->pool, 0);

    if (cln == NULL) {
        FUNC0(b->pos);
        return FUNC3(r, &ngx_http_xslt_filter_module,
                                               NGX_HTTP_INTERNAL_SERVER_ERROR);
    }

    if (r == r->main) {
        r->headers_out.content_length_n = b->last - b->pos;

        if (r->headers_out.content_length) {
            r->headers_out.content_length->hash = 0;
            r->headers_out.content_length = NULL;
        }

        conf = FUNC4(r, ngx_http_xslt_filter_module);

        if (!conf->last_modified) {
            FUNC2(r);
            FUNC1(r);

        } else {
            FUNC7(r);
        }
    }

    rc = FUNC6(r);

    if (rc == NGX_ERROR || rc > NGX_OK || r->header_only) {
        FUNC0(b->pos);
        return rc;
    }

    cln->handler = ngx_http_xslt_cleanup;
    cln->data = b->pos;

    out.buf = b;
    out.next = NULL;

    return FUNC5(r, &out);
}