#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_int_t ;
struct TYPE_13__ {int not_found; } ;
typedef  TYPE_1__ ngx_http_variable_value_t ;
struct TYPE_14__ {scalar_t__* uid_set; } ;
typedef  TYPE_2__ ngx_http_userid_ctx_t ;
struct TYPE_15__ {scalar_t__ enable; int /*<<< orphan*/  name; } ;
typedef  TYPE_3__ ngx_http_userid_conf_t ;
struct TYPE_16__ {int /*<<< orphan*/  main; } ;
typedef  TYPE_4__ ngx_http_request_t ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 scalar_t__ NGX_HTTP_USERID_V1 ; 
 scalar_t__ NGX_OK ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  ngx_http_userid_filter_module ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,scalar_t__*) ; 

__attribute__((used)) static ngx_int_t
FUNC4(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{
    ngx_http_userid_ctx_t   *ctx;
    ngx_http_userid_conf_t  *conf;

    conf = FUNC0(r->main, ngx_http_userid_filter_module);

    if (conf->enable < NGX_HTTP_USERID_V1) {
        v->not_found = 1;
        return NGX_OK;
    }

    ctx = FUNC2(r->main, conf);

    if (ctx == NULL) {
        return NGX_ERROR;
    }

    if (FUNC1(r->main, ctx, conf) != NGX_OK) {
        return NGX_ERROR;
    }

    if (ctx->uid_set[3] == 0) {
        v->not_found = 1;
        return NGX_OK;
    }

    return FUNC3(r->main, v, &conf->name, ctx->uid_set);
}