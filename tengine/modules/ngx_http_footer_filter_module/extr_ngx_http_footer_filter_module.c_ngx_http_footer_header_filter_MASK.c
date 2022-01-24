#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_17__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_23__ {scalar_t__ status; int content_length_n; TYPE_3__* content_length; TYPE_2__* content_encoding; } ;
struct TYPE_24__ {int method; TYPE_4__ headers_out; int /*<<< orphan*/  pool; struct TYPE_24__* main; scalar_t__ header_only; } ;
typedef  TYPE_5__ ngx_http_request_t ;
struct TYPE_25__ {int /*<<< orphan*/ * variable; int /*<<< orphan*/  types; } ;
typedef  TYPE_6__ ngx_http_footer_loc_conf_t ;
struct TYPE_19__ {scalar_t__ len; } ;
struct TYPE_26__ {TYPE_17__ footer; } ;
typedef  TYPE_7__ ngx_http_footer_ctx_t ;
typedef  int /*<<< orphan*/  ngx_http_complex_value_t ;
struct TYPE_22__ {scalar_t__ hash; } ;
struct TYPE_20__ {scalar_t__ len; } ;
struct TYPE_21__ {TYPE_1__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int NGX_HTTP_HEAD ; 
 scalar_t__ NGX_HTTP_NO_CONTENT ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 scalar_t__ FUNC1 (TYPE_5__*,int /*<<< orphan*/ *,TYPE_17__*) ; 
 int /*<<< orphan*/  ngx_http_footer_filter_module ; 
 TYPE_6__* FUNC2 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 TYPE_7__* FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ngx_int_t
FUNC7(ngx_http_request_t *r)
{
    ngx_http_footer_ctx_t       *ctx;
    ngx_http_footer_loc_conf_t  *lcf;

    lcf = FUNC2(r, ngx_http_footer_filter_module);

    if (lcf->variable == (ngx_http_complex_value_t *) -1
        || r->header_only
        || (r->method & NGX_HTTP_HEAD)
        || r != r->main
        || r->headers_out.status == NGX_HTTP_NO_CONTENT
        || (r->headers_out.content_encoding
            && r->headers_out.content_encoding->value.len)
        || FUNC5(r, &lcf->types) == NULL)
    {
        return FUNC3(r);
    }

    ctx = FUNC6(r->pool, sizeof(ngx_http_footer_ctx_t));
    if (ctx == NULL) {
       return NGX_ERROR;
    }

    if (FUNC1(r, lcf->variable, &ctx->footer) != NGX_OK) {
        return NGX_ERROR;
    }

    FUNC4(r, ctx, ngx_http_footer_filter_module);

    if (r->headers_out.content_length_n != -1) {
        r->headers_out.content_length_n += ctx->footer.len;
    }

    if (r->headers_out.content_length) {
        r->headers_out.content_length->hash = 0;
        r->headers_out.content_length = NULL;
    }

    FUNC0(r);

    return FUNC3(r);
}