
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int * log_ctx; TYPE_1__* data; } ;
typedef TYPE_3__ ngx_slab_pool_t ;
struct TYPE_14__ {size_t len; } ;
struct TYPE_10__ {TYPE_6__ name; scalar_t__ exists; scalar_t__ addr; } ;
struct TYPE_12__ {TYPE_2__ shm; TYPE_5__* data; } ;
typedef TYPE_4__ ngx_shm_zone_t ;
typedef int ngx_int_t ;
struct TYPE_13__ {TYPE_3__* shpool; TYPE_1__* sh; } ;
typedef TYPE_5__ ngx_http_tfs_local_block_cache_ctx_t ;
typedef int ngx_http_tfs_block_cache_shctx_t ;
struct TYPE_9__ {int queue; int sentinel; int rbtree; scalar_t__ miss_count; scalar_t__ hit_count; int discard_item_count; } ;


 int NGX_ERROR ;
 int NGX_HTTP_TFS_BLOCK_CACHE_DISCARD_ITEM_COUNT ;
 int NGX_OK ;
 int ngx_http_tfs_local_block_cache_rbtree_insert_value ;
 int ngx_queue_init (int *) ;
 int ngx_rbtree_init (int *,int *,int ) ;
 void* ngx_slab_alloc (TYPE_3__*,size_t) ;
 int ngx_sprintf (int *,char*,TYPE_6__*) ;

ngx_int_t
ngx_http_tfs_local_block_cache_init_zone(ngx_shm_zone_t *shm_zone, void *data)
{
    size_t len;
    ngx_http_tfs_local_block_cache_ctx_t *ctx;
    ngx_http_tfs_local_block_cache_ctx_t *octx = data;

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

    ctx->sh = ngx_slab_alloc(ctx->shpool,
                             sizeof(ngx_http_tfs_block_cache_shctx_t));
    if (ctx->sh == ((void*)0)) {
        return NGX_ERROR;
    }

    ctx->sh->discard_item_count = NGX_HTTP_TFS_BLOCK_CACHE_DISCARD_ITEM_COUNT;
    ctx->sh->hit_count = 0;
    ctx->sh->miss_count = 0;

    ctx->shpool->data = ctx->sh;

    ngx_rbtree_init(&ctx->sh->rbtree, &ctx->sh->sentinel,
                    ngx_http_tfs_local_block_cache_rbtree_insert_value);

    ngx_queue_init(&ctx->sh->queue);

    len = sizeof(" in tfs block cache zone \"\"") + shm_zone->shm.name.len;

    ctx->shpool->log_ctx = ngx_slab_alloc(ctx->shpool, len);
    if (ctx->shpool->log_ctx == ((void*)0)) {
        return NGX_ERROR;
    }

    ngx_sprintf(ctx->shpool->log_ctx, " in tfs block cache zone \"%V\"%Z",
                &shm_zone->shm.name);

    return NGX_OK;
}
