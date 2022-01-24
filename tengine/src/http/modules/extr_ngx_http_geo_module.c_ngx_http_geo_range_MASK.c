#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  int ngx_uint_t ;
struct TYPE_14__ {int len; int /*<<< orphan*/ * data; } ;
typedef  TYPE_3__ ngx_str_t ;
typedef  int /*<<< orphan*/  ngx_http_geo_range_t ;
struct TYPE_13__ {int /*<<< orphan*/ * low; int /*<<< orphan*/ * default_value; } ;
struct TYPE_12__ {TYPE_3__* data; } ;
struct TYPE_15__ {int outside_entries; TYPE_3__* net; int /*<<< orphan*/ * value; int /*<<< orphan*/  entries; TYPE_2__ high; int /*<<< orphan*/  pool; TYPE_1__ include_name; scalar_t__ binary_include; } ;
typedef  TYPE_4__ ngx_http_geo_conf_ctx_t ;
typedef  int /*<<< orphan*/  ngx_conf_t ;
typedef  scalar_t__ in_addr_t ;

/* Variables and functions */
 scalar_t__ INADDR_NONE ; 
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 int /*<<< orphan*/  NGX_LOG_EMERG ; 
 int /*<<< orphan*/  NGX_LOG_WARN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,TYPE_3__*,...) ; 
 char* FUNC1 (int /*<<< orphan*/ *,TYPE_4__*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_4__*,scalar_t__,scalar_t__) ; 
 void* FUNC3 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_3__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 

__attribute__((used)) static char *
FUNC9(ngx_conf_t *cf, ngx_http_geo_conf_ctx_t *ctx,
    ngx_str_t *value)
{
    u_char      *p, *last;
    in_addr_t    start, end;
    ngx_str_t   *net;
    ngx_uint_t   del;

    if (FUNC6(value[0].data, "default") == 0) {

        if (ctx->high.default_value) {
            FUNC0(NGX_LOG_WARN, cf, 0,
                "duplicate default geo range value: \"%V\", old value: \"%v\"",
                &value[1], ctx->high.default_value);
        }

        ctx->high.default_value = FUNC3(cf, ctx, &value[1]);
        if (ctx->high.default_value == NULL) {
            return NGX_CONF_ERROR;
        }

        return NGX_CONF_OK;
    }

    if (ctx->binary_include) {
        FUNC0(NGX_LOG_EMERG, cf, 0,
            "binary geo range base \"%s\" cannot be mixed with usual entries",
            ctx->include_name.data);
        return NGX_CONF_ERROR;
    }

    if (ctx->high.low == NULL) {
        ctx->high.low = FUNC5(ctx->pool,
                                    0x10000 * sizeof(ngx_http_geo_range_t *));
        if (ctx->high.low == NULL) {
            return NGX_CONF_ERROR;
        }
    }

    ctx->entries++;
    ctx->outside_entries = 1;

    if (FUNC6(value[0].data, "delete") == 0) {
        net = &value[1];
        del = 1;

    } else {
        net = &value[0];
        del = 0;
    }

    last = net->data + net->len;

    p = FUNC7(net->data, last, '-');

    if (p == NULL) {
        goto invalid;
    }

    start = FUNC4(net->data, p - net->data);

    if (start == INADDR_NONE) {
        goto invalid;
    }

    start = FUNC8(start);

    p++;

    end = FUNC4(p, last - p);

    if (end == INADDR_NONE) {
        goto invalid;
    }

    end = FUNC8(end);

    if (start > end) {
        goto invalid;
    }

    if (del) {
        if (FUNC2(cf, ctx, start, end)) {
            FUNC0(NGX_LOG_WARN, cf, 0,
                               "no address range \"%V\" to delete", net);
        }

        return NGX_CONF_OK;
    }

    ctx->value = FUNC3(cf, ctx, &value[1]);

    if (ctx->value == NULL) {
        return NGX_CONF_ERROR;
    }

    ctx->net = net;

    return FUNC1(cf, ctx, start, end);

invalid:

    FUNC0(NGX_LOG_EMERG, cf, 0, "invalid range \"%V\"", net);

    return NGX_CONF_ERROR;
}