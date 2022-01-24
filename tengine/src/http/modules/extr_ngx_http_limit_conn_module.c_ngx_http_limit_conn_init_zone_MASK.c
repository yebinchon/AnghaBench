#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/ * log_ctx; int /*<<< orphan*/ * data; } ;
typedef  TYPE_3__ ngx_slab_pool_t ;
struct TYPE_17__ {size_t len; } ;
struct TYPE_13__ {TYPE_6__ name; scalar_t__ exists; scalar_t__ addr; int /*<<< orphan*/  log; } ;
struct TYPE_15__ {TYPE_2__ shm; TYPE_5__* data; } ;
typedef  TYPE_4__ ngx_shm_zone_t ;
typedef  int /*<<< orphan*/  ngx_rbtree_t ;
typedef  int /*<<< orphan*/  ngx_rbtree_node_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_18__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_12__ {TYPE_9__ value; } ;
struct TYPE_16__ {int /*<<< orphan*/ * rbtree; TYPE_1__ key; } ;
typedef  TYPE_5__ ngx_http_limit_conn_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_EMERG ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  ngx_http_limit_conn_rbtree_insert_value ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_6__*,TYPE_9__*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,TYPE_6__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static ngx_int_t
FUNC5(ngx_shm_zone_t *shm_zone, void *data)
{
    ngx_http_limit_conn_ctx_t  *octx = data;

    size_t                      len;
    ngx_slab_pool_t            *shpool;
    ngx_rbtree_node_t          *sentinel;
    ngx_http_limit_conn_ctx_t  *ctx;

    ctx = shm_zone->data;

    if (octx) {
        if (ctx->key.value.len != octx->key.value.len
            || FUNC4(ctx->key.value.data, octx->key.value.data,
                           ctx->key.value.len)
               != 0)
        {
            FUNC0(NGX_LOG_EMERG, shm_zone->shm.log, 0,
                          "limit_conn_zone \"%V\" uses the \"%V\" key "
                          "while previously it used the \"%V\" key",
                          &shm_zone->shm.name, &ctx->key.value,
                          &octx->key.value);
            return NGX_ERROR;
        }

        ctx->rbtree = octx->rbtree;

        return NGX_OK;
    }

    shpool = (ngx_slab_pool_t *) shm_zone->shm.addr;

    if (shm_zone->shm.exists) {
        ctx->rbtree = shpool->data;

        return NGX_OK;
    }

    ctx->rbtree = FUNC2(shpool, sizeof(ngx_rbtree_t));
    if (ctx->rbtree == NULL) {
        return NGX_ERROR;
    }

    shpool->data = ctx->rbtree;

    sentinel = FUNC2(shpool, sizeof(ngx_rbtree_node_t));
    if (sentinel == NULL) {
        return NGX_ERROR;
    }

    FUNC1(ctx->rbtree, sentinel,
                    ngx_http_limit_conn_rbtree_insert_value);

    len = sizeof(" in limit_conn_zone \"\"") + shm_zone->shm.name.len;

    shpool->log_ctx = FUNC2(shpool, len);
    if (shpool->log_ctx == NULL) {
        return NGX_ERROR;
    }

    FUNC3(shpool->log_ctx, " in limit_conn_zone \"%V\"%Z",
                &shm_zone->shm.name);

    return NGX_OK;
}