#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_17__ {scalar_t__ status; } ;
struct TYPE_18__ {int preserve_body; int /*<<< orphan*/  pool; struct TYPE_18__* main; TYPE_3__ headers_out; } ;
typedef  TYPE_4__ ngx_http_request_t ;
typedef  int /*<<< orphan*/  ngx_http_addition_ctx_t ;
struct TYPE_16__ {scalar_t__ len; } ;
struct TYPE_15__ {scalar_t__ len; } ;
struct TYPE_19__ {int /*<<< orphan*/  types; TYPE_2__ after_body; TYPE_1__ before_body; } ;
typedef  TYPE_5__ ngx_http_addition_conf_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 scalar_t__ NGX_HTTP_OK ; 
 int /*<<< orphan*/  ngx_http_addition_filter_module ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 TYPE_5__* FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ngx_int_t
FUNC8(ngx_http_request_t *r)
{
    ngx_http_addition_ctx_t   *ctx;
    ngx_http_addition_conf_t  *conf;

    if (r->headers_out.status != NGX_HTTP_OK || r != r->main) {
        return FUNC3(r);
    }

    conf = FUNC2(r, ngx_http_addition_filter_module);

    if (conf->before_body.len == 0 && conf->after_body.len == 0) {
        return FUNC3(r);
    }

    if (FUNC5(r, &conf->types) == NULL) {
        return FUNC3(r);
    }

    ctx = FUNC7(r->pool, sizeof(ngx_http_addition_ctx_t));
    if (ctx == NULL) {
        return NGX_ERROR;
    }

    FUNC4(r, ctx, ngx_http_addition_filter_module);

    FUNC1(r);
    FUNC0(r);
    FUNC6(r);

    r->preserve_body = 1;

    return FUNC3(r);
}