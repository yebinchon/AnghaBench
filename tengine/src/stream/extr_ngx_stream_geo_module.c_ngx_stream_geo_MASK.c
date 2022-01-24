#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int ranges; scalar_t__ tree6; scalar_t__ tree; } ;
typedef  TYPE_2__ ngx_stream_geo_conf_ctx_t ;
struct TYPE_18__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_3__ ngx_str_t ;
struct TYPE_19__ {int /*<<< orphan*/  pool; TYPE_1__* args; TYPE_2__* ctx; } ;
typedef  TYPE_4__ ngx_conf_t ;
typedef  int /*<<< orphan*/  ngx_command_t ;
struct TYPE_16__ {int nelts; TYPE_3__* elts; } ;

/* Variables and functions */
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 int /*<<< orphan*/  NGX_LOG_EMERG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (TYPE_4__*,TYPE_2__*,TYPE_3__*) ; 
 char* FUNC4 (TYPE_4__*,TYPE_2__*,TYPE_3__*) ; 
 char* FUNC5 (TYPE_4__*,TYPE_2__*,TYPE_3__*) ; 

__attribute__((used)) static char *
FUNC6(ngx_conf_t *cf, ngx_command_t *dummy, void *conf)
{
    char                       *rv;
    ngx_str_t                  *value;
    ngx_stream_geo_conf_ctx_t  *ctx;

    ctx = cf->ctx;

    value = cf->args->elts;

    if (cf->args->nelts == 1) {

        if (FUNC2(value[0].data, "ranges") == 0) {

            if (ctx->tree
#if (NGX_HAVE_INET6)
                || ctx->tree6
#endif
               )
            {
                FUNC0(NGX_LOG_EMERG, cf, 0,
                                   "the \"ranges\" directive must be "
                                   "the first directive inside \"geo\" block");
                goto failed;
            }

            ctx->ranges = 1;

            rv = NGX_CONF_OK;

            goto done;
        }
    }

    if (cf->args->nelts != 2) {
        FUNC0(NGX_LOG_EMERG, cf, 0,
                           "invalid number of the geo parameters");
        goto failed;
    }

    if (FUNC2(value[0].data, "include") == 0) {

        rv = FUNC4(cf, ctx, &value[1]);

        goto done;
    }

    if (ctx->ranges) {
        rv = FUNC5(cf, ctx, value);

    } else {
        rv = FUNC3(cf, ctx, value);
    }

done:

    FUNC1(cf->pool);

    return rv;

failed:

    FUNC1(cf->pool);

    return NGX_CONF_ERROR;
}