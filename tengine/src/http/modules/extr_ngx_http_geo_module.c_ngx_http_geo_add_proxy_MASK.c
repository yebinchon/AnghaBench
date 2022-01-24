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
struct TYPE_3__ {int /*<<< orphan*/ * proxies; int /*<<< orphan*/  pool; } ;
typedef  TYPE_1__ ngx_http_geo_conf_ctx_t ;
typedef  int /*<<< orphan*/  ngx_conf_t ;
typedef  int /*<<< orphan*/  ngx_cidr_t ;

/* Variables and functions */
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *
FUNC2(ngx_conf_t *cf, ngx_http_geo_conf_ctx_t *ctx,
    ngx_cidr_t *cidr)
{
    ngx_cidr_t  *c;

    if (ctx->proxies == NULL) {
        ctx->proxies = FUNC0(ctx->pool, 4, sizeof(ngx_cidr_t));
        if (ctx->proxies == NULL) {
            return NGX_CONF_ERROR;
        }
    }

    c = FUNC1(ctx->proxies);
    if (c == NULL) {
        return NGX_CONF_ERROR;
    }

    *c = *cidr;

    return NGX_CONF_OK;
}