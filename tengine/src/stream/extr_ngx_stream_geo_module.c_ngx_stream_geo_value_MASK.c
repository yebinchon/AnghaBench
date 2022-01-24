#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_16__ {int valid; int /*<<< orphan*/ * data; scalar_t__ len; scalar_t__ not_found; scalar_t__ no_cacheable; } ;
typedef  TYPE_3__ ngx_stream_variable_value_t ;
struct TYPE_13__ {int /*<<< orphan*/  key; } ;
struct TYPE_14__ {int /*<<< orphan*/ * data; scalar_t__ len; } ;
struct TYPE_15__ {TYPE_11__ node; TYPE_1__ str; } ;
struct TYPE_17__ {TYPE_2__ sn; scalar_t__ offset; TYPE_3__* value; } ;
typedef  TYPE_4__ ngx_stream_geo_variable_value_node_t ;
struct TYPE_18__ {int /*<<< orphan*/  data_size; int /*<<< orphan*/  rbtree; int /*<<< orphan*/  temp_pool; int /*<<< orphan*/  pool; } ;
typedef  TYPE_5__ ngx_stream_geo_conf_ctx_t ;
struct TYPE_19__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
typedef  TYPE_6__ ngx_str_t ;
typedef  int /*<<< orphan*/  ngx_conf_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_11__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_6__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ngx_stream_variable_value_t *
FUNC6(ngx_conf_t *cf, ngx_stream_geo_conf_ctx_t *ctx,
    ngx_str_t *value)
{
    uint32_t                               hash;
    ngx_stream_variable_value_t           *val;
    ngx_stream_geo_variable_value_node_t  *gvvn;

    hash = FUNC1(value->data, value->len);

    gvvn = (ngx_stream_geo_variable_value_node_t *)
               FUNC5(&ctx->rbtree, value, hash);

    if (gvvn) {
        return gvvn->value;
    }

    val = FUNC2(ctx->pool, sizeof(ngx_stream_variable_value_t));
    if (val == NULL) {
        return NULL;
    }

    val->len = value->len;
    val->data = FUNC3(ctx->pool, value);
    if (val->data == NULL) {
        return NULL;
    }

    val->valid = 1;
    val->no_cacheable = 0;
    val->not_found = 0;

    gvvn = FUNC2(ctx->temp_pool,
                      sizeof(ngx_stream_geo_variable_value_node_t));
    if (gvvn == NULL) {
        return NULL;
    }

    gvvn->sn.node.key = hash;
    gvvn->sn.str.len = val->len;
    gvvn->sn.str.data = val->data;
    gvvn->value = val;
    gvvn->offset = 0;

    FUNC4(&ctx->rbtree, &gvvn->sn.node);

    ctx->data_size += FUNC0(sizeof(ngx_stream_variable_value_t)
                                + value->len, sizeof(void *));

    return val;
}