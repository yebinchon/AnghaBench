#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/ * log_ctx; TYPE_1__* data; } ;
typedef  TYPE_3__ ngx_slab_pool_t ;
struct TYPE_14__ {size_t len; } ;
struct TYPE_10__ {TYPE_6__ name; scalar_t__ exists; scalar_t__ addr; } ;
struct TYPE_12__ {TYPE_2__ shm; TYPE_5__* data; } ;
typedef  TYPE_4__ ngx_shm_zone_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_13__ {TYPE_3__* shpool; TYPE_1__* sh; } ;
typedef  TYPE_5__ ngx_http_tfs_local_block_cache_ctx_t ;
typedef  int /*<<< orphan*/  ngx_http_tfs_block_cache_shctx_t ;
struct TYPE_9__ {int /*<<< orphan*/  queue; int /*<<< orphan*/  sentinel; int /*<<< orphan*/  rbtree; scalar_t__ miss_count; scalar_t__ hit_count; int /*<<< orphan*/  discard_item_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_HTTP_TFS_BLOCK_CACHE_DISCARD_ITEM_COUNT ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  ngx_http_tfs_local_block_cache_rbtree_insert_value ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,TYPE_6__*) ; 

ngx_int_t
FUNC4(ngx_shm_zone_t *shm_zone, void *data)
{
    size_t                                 len;
    ngx_http_tfs_local_block_cache_ctx_t  *ctx;
    ngx_http_tfs_local_block_cache_ctx_t  *octx = data;

    ctx = shm_zone->data;

    if (octx) {
        ctx->sh = octx->sh;
        ctx->shpool = octx->shpool;

        return NGX_OK;
    }

    ctx->shpool = (ngx_slab_pool_t *) shm_zone->shm.addr;

    if (shm_zone->shm.exists) {
        ctx->sh = ctx->shpool->data;

        return NGX_OK;
    }

    ctx->sh = FUNC2(ctx->shpool,
                             sizeof(ngx_http_tfs_block_cache_shctx_t));
    if (ctx->sh == NULL) {
        return NGX_ERROR;
    }

    ctx->sh->discard_item_count = NGX_HTTP_TFS_BLOCK_CACHE_DISCARD_ITEM_COUNT;
    ctx->sh->hit_count = 0;
    ctx->sh->miss_count = 0;

    ctx->shpool->data = ctx->sh;

    FUNC1(&ctx->sh->rbtree, &ctx->sh->sentinel,
                    ngx_http_tfs_local_block_cache_rbtree_insert_value);

    FUNC0(&ctx->sh->queue);

    len = sizeof(" in tfs block cache zone \"\"") + shm_zone->shm.name.len;

    ctx->shpool->log_ctx = FUNC2(ctx->shpool, len);
    if (ctx->shpool->log_ctx == NULL) {
        return NGX_ERROR;
    }

    FUNC3(ctx->shpool->log_ctx, " in tfs block cache zone \"%V\"%Z",
                &shm_zone->shm.name);

    return NGX_OK;
}