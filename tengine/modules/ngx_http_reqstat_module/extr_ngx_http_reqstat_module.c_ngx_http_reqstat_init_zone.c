
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int * log_ctx; TYPE_2__* data; } ;
typedef TYPE_3__ ngx_slab_pool_t ;
struct TYPE_17__ {int len; } ;
struct TYPE_12__ {TYPE_6__ name; scalar_t__ addr; int log; } ;
struct TYPE_15__ {TYPE_1__ shm; TYPE_5__* data; } ;
typedef TYPE_4__ ngx_shm_zone_t ;
typedef int ngx_int_t ;
typedef int ngx_http_reqstat_shctx_t ;
struct TYPE_16__ {TYPE_2__* sh; TYPE_3__* shpool; TYPE_9__* val; } ;
typedef TYPE_5__ ngx_http_reqstat_ctx_t ;
struct TYPE_18__ {int data; } ;
struct TYPE_13__ {int visit; int queue; int sentinel; int rbtree; } ;


 int NGX_ERROR ;
 int NGX_LOG_EMERG ;
 int NGX_OK ;
 int ngx_http_reqstat_rbtree_insert_value ;
 int ngx_log_error (int ,int ,int ,char*,TYPE_6__*,TYPE_9__*,TYPE_9__*) ;
 int ngx_queue_init (int *) ;
 int ngx_rbtree_init (int *,int *,int ) ;
 void* ngx_slab_alloc (TYPE_3__*,size_t) ;
 int ngx_sprintf (int *,char*,TYPE_6__*) ;
 scalar_t__ ngx_strcmp (int ,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_reqstat_init_zone(ngx_shm_zone_t *shm_zone, void *data)
{
    size_t n;
    ngx_http_reqstat_ctx_t *ctx, *octx;

    octx = data;
    ctx = shm_zone->data;

    if (octx != ((void*)0)) {
        if (ngx_strcmp(ctx->val->data, octx->val->data) != 0) {
            ngx_log_error(NGX_LOG_EMERG, shm_zone->shm.log, 0,
                          "reqstat \"%V\" uses the value str \"%V\" "
                          "while previously it used \"%V\"",
                          &shm_zone->shm.name, ctx->val, octx->val);
            return NGX_ERROR;
        }

        ctx->shpool = octx->shpool;
        ctx->sh = octx->sh;

        return NGX_OK;
    }

    ctx->shpool = (ngx_slab_pool_t *) shm_zone->shm.addr;

    ctx->sh = ngx_slab_alloc(ctx->shpool, sizeof(ngx_http_reqstat_shctx_t));
    if (ctx->sh == ((void*)0)) {
        return NGX_ERROR;
    }

    ctx->shpool->data = ctx->sh;

    n = sizeof(" in req_status zone \"\"") + shm_zone->shm.name.len;
    ctx->shpool->log_ctx = ngx_slab_alloc(ctx->shpool, n);
    if (ctx->shpool->log_ctx == ((void*)0)) {
        return NGX_ERROR;
    }

    ngx_sprintf(ctx->shpool->log_ctx,
                " in req_status zone \"%V\"%Z",
                &shm_zone->shm.name);

    ngx_rbtree_init(&ctx->sh->rbtree, &ctx->sh->sentinel,
                    ngx_http_reqstat_rbtree_insert_value);

    ngx_queue_init(&ctx->sh->queue);
    ngx_queue_init(&ctx->sh->visit);

    return NGX_OK;
}
