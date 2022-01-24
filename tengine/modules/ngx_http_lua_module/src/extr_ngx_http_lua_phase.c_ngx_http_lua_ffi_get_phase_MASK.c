#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_http_request_t ;
struct TYPE_3__ {int context; } ;
typedef  TYPE_1__ ngx_http_lua_ctx_t ;

/* Variables and functions */
 int NGX_ERROR ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 

int
FUNC1(ngx_http_request_t *r, char **err)
{
    ngx_http_lua_ctx_t  *ctx;

    ctx = FUNC0(r, ngx_http_lua_module);
    if (ctx == NULL) {
        *err = "no request context";
        return NGX_ERROR;
    }

    return ctx->context;
}