#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_8__ {int not_found; int valid; int /*<<< orphan*/ * data; int /*<<< orphan*/ * len; scalar_t__ no_cacheable; } ;
typedef  TYPE_1__ ngx_http_variable_value_t ;
struct TYPE_9__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_2__ ngx_http_request_t ;
struct TYPE_10__ {scalar_t__ internal_body_length; } ;
typedef  TYPE_3__ ngx_http_proxy_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_OFF_T_LEN ; 
 int /*<<< orphan*/  NGX_OK ; 
 TYPE_3__* FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_proxy_module ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__) ; 

__attribute__((used)) static ngx_int_t
FUNC3(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{
    ngx_http_proxy_ctx_t  *ctx;

    ctx = FUNC0(r, ngx_http_proxy_module);

    if (ctx == NULL || ctx->internal_body_length < 0) {
        v->not_found = 1;
        return NGX_OK;
    }

    v->valid = 1;
    v->no_cacheable = 0;
    v->not_found = 0;

    v->data = FUNC1(r->pool, NGX_OFF_T_LEN);

    if (v->data == NULL) {
        return NGX_ERROR;
    }

    v->len = FUNC2(v->data, "%O", ctx->internal_body_length) - v->data;

    return NGX_OK;
}