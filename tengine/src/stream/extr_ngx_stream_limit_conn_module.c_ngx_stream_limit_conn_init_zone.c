
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_12__ {scalar_t__ len; int data; } ;
struct TYPE_13__ {TYPE_10__ value; } ;
struct TYPE_15__ {int * rbtree; TYPE_1__ key; } ;
typedef TYPE_3__ ngx_stream_limit_conn_ctx_t ;
struct TYPE_16__ {int * log_ctx; int * data; } ;
typedef TYPE_4__ ngx_slab_pool_t ;
struct TYPE_18__ {size_t len; } ;
struct TYPE_14__ {TYPE_7__ name; scalar_t__ exists; scalar_t__ addr; int log; } ;
struct TYPE_17__ {TYPE_2__ shm; TYPE_3__* data; } ;
typedef TYPE_5__ ngx_shm_zone_t ;
typedef int ngx_rbtree_t ;
typedef int ngx_rbtree_node_t ;
typedef int ngx_int_t ;


 int NGX_ERROR ;
 int NGX_LOG_EMERG ;
 int NGX_OK ;
 int ngx_log_error (int ,int ,int ,char*,TYPE_7__*,TYPE_10__*,TYPE_10__*) ;
 int ngx_rbtree_init (int *,int *,int ) ;
 void* ngx_slab_alloc (TYPE_4__*,size_t) ;
 int ngx_sprintf (int *,char*,TYPE_7__*) ;
 int ngx_stream_limit_conn_rbtree_insert_value ;
 scalar_t__ ngx_strncmp (int ,int ,scalar_t__) ;

__attribute__((used)) static ngx_int_t
ngx_stream_limit_conn_init_zone(ngx_shm_zone_t *shm_zone, void *data)
{
    ngx_stream_limit_conn_ctx_t *octx = data;

    size_t len;
    ngx_slab_pool_t *shpool;
    ngx_rbtree_node_t *sentinel;
    ngx_stream_limit_conn_ctx_t *ctx;

    ctx = shm_zone->data;

    if (octx) {
        if (ctx->key.value.len != octx->key.value.len
            || ngx_strncmp(ctx->key.value.data, octx->key.value.data,
                           ctx->key.value.len)
               != 0)
        {
            ngx_log_error(NGX_LOG_EMERG, shm_zone->shm.log, 0,
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

    ctx->rbtree = ngx_slab_alloc(shpool, sizeof(ngx_rbtree_t));
    if (ctx->rbtree == ((void*)0)) {
        return NGX_ERROR;
    }

    shpool->data = ctx->rbtree;

    sentinel = ngx_slab_alloc(shpool, sizeof(ngx_rbtree_node_t));
    if (sentinel == ((void*)0)) {
        return NGX_ERROR;
    }

    ngx_rbtree_init(ctx->rbtree, sentinel,
                    ngx_stream_limit_conn_rbtree_insert_value);

    len = sizeof(" in limit_conn_zone \"\"") + shm_zone->shm.name.len;

    shpool->log_ctx = ngx_slab_alloc(shpool, len);
    if (shpool->log_ctx == ((void*)0)) {
        return NGX_ERROR;
    }

    ngx_sprintf(shpool->log_ctx, " in limit_conn_zone \"%V\"%Z",
                &shm_zone->shm.name);

    return NGX_OK;
}
