
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_17__ {scalar_t__ log_nomem; int * log_ctx; TYPE_2__* data; } ;
typedef TYPE_4__ ngx_slab_pool_t ;
struct TYPE_20__ {size_t len; } ;
struct TYPE_16__ {TYPE_7__ name; scalar_t__ exists; scalar_t__ addr; int log; } ;
struct TYPE_18__ {TYPE_3__ shm; TYPE_6__* data; } ;
typedef TYPE_5__ ngx_shm_zone_t ;
typedef int ngx_int_t ;
typedef int ngx_http_limit_req_shctx_t ;
struct TYPE_13__ {scalar_t__ len; int data; } ;
struct TYPE_14__ {TYPE_10__ value; } ;
struct TYPE_19__ {TYPE_4__* shpool; TYPE_2__* sh; TYPE_1__ key; } ;
typedef TYPE_6__ ngx_http_limit_req_ctx_t ;
struct TYPE_15__ {int queue; int sentinel; int rbtree; } ;


 int NGX_ERROR ;
 int NGX_LOG_EMERG ;
 int NGX_OK ;
 int ngx_http_limit_req_rbtree_insert_value ;
 int ngx_log_error (int ,int ,int ,char*,TYPE_7__*,TYPE_10__*,TYPE_10__*) ;
 int ngx_queue_init (int *) ;
 int ngx_rbtree_init (int *,int *,int ) ;
 void* ngx_slab_alloc (TYPE_4__*,size_t) ;
 int ngx_sprintf (int *,char*,TYPE_7__*) ;
 scalar_t__ ngx_strncmp (int ,int ,scalar_t__) ;

__attribute__((used)) static ngx_int_t
ngx_http_limit_req_init_zone(ngx_shm_zone_t *shm_zone, void *data)
{
    ngx_http_limit_req_ctx_t *octx = data;

    size_t len;
    ngx_http_limit_req_ctx_t *ctx;

    ctx = shm_zone->data;

    if (octx) {
        if (ctx->key.value.len != octx->key.value.len
            || ngx_strncmp(ctx->key.value.data, octx->key.value.data,
                           ctx->key.value.len)
               != 0)
        {
            ngx_log_error(NGX_LOG_EMERG, shm_zone->shm.log, 0,
                          "limit_req \"%V\" uses the \"%V\" key "
                          "while previously it used the \"%V\" key",
                          &shm_zone->shm.name, &ctx->key.value,
                          &octx->key.value);
            return NGX_ERROR;
        }

        ctx->sh = octx->sh;
        ctx->shpool = octx->shpool;

        return NGX_OK;
    }

    ctx->shpool = (ngx_slab_pool_t *) shm_zone->shm.addr;

    if (shm_zone->shm.exists) {
        ctx->sh = ctx->shpool->data;

        return NGX_OK;
    }

    ctx->sh = ngx_slab_alloc(ctx->shpool, sizeof(ngx_http_limit_req_shctx_t));
    if (ctx->sh == ((void*)0)) {
        return NGX_ERROR;
    }

    ctx->shpool->data = ctx->sh;

    ngx_rbtree_init(&ctx->sh->rbtree, &ctx->sh->sentinel,
                    ngx_http_limit_req_rbtree_insert_value);

    ngx_queue_init(&ctx->sh->queue);

    len = sizeof(" in limit_req zone \"\"") + shm_zone->shm.name.len;

    ctx->shpool->log_ctx = ngx_slab_alloc(ctx->shpool, len);
    if (ctx->shpool->log_ctx == ((void*)0)) {
        return NGX_ERROR;
    }

    ngx_sprintf(ctx->shpool->log_ctx, " in limit_req zone \"%V\"%Z",
                &shm_zone->shm.name);

    ctx->shpool->log_nomem = 0;

    return NGX_OK;
}
