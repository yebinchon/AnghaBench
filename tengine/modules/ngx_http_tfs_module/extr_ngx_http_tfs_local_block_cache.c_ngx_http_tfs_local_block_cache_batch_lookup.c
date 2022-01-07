
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u_char ;
typedef scalar_t__ ngx_uint_t ;
struct TYPE_16__ {int mutex; } ;
typedef TYPE_3__ ngx_slab_pool_t ;
struct TYPE_17__ {scalar_t__ key; struct TYPE_17__* right; struct TYPE_17__* left; int color; } ;
typedef TYPE_4__ ngx_rbtree_node_t ;
typedef int ngx_pool_t ;
typedef int ngx_log_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_18__ {TYPE_2__* sh; TYPE_3__* shpool; } ;
typedef TYPE_5__ ngx_http_tfs_local_block_cache_ctx_t ;
struct TYPE_19__ {int ds_count; int * ds_addrs; } ;
typedef TYPE_6__ ngx_http_tfs_block_cache_value_t ;
struct TYPE_20__ {int count; int queue; int data; int key; } ;
typedef TYPE_7__ ngx_http_tfs_block_cache_node_t ;
struct TYPE_21__ {TYPE_6__* value; int * key; } ;
typedef TYPE_8__ ngx_http_tfs_block_cache_kv_t ;
typedef int ngx_http_tfs_block_cache_key_t ;
struct TYPE_22__ {scalar_t__ nelts; int * elts; } ;
typedef TYPE_9__ ngx_array_t ;
struct TYPE_14__ {TYPE_4__* root; TYPE_4__* sentinel; } ;
struct TYPE_15__ {scalar_t__ miss_count; scalar_t__ hit_count; int queue; TYPE_1__ rbtree; } ;


 scalar_t__ NGX_DECLINED ;
 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_TFS_BLOCK_CACHE_KEY_SIZE ;
 scalar_t__ NGX_HTTP_TFS_BLOCK_CACHE_STAT_COUNT ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_INFO ;
 scalar_t__ ngx_array_push (TYPE_9__*) ;
 scalar_t__ ngx_http_tfs_block_cache_cmp (int *,int *) ;
 int ngx_log_debug1 (int ,int *,int ,char*,scalar_t__) ;
 int ngx_log_error (int ,int *,int ,char*,double) ;
 int ngx_memcpy (int *,int ,int) ;
 scalar_t__ ngx_murmur_hash2 (int *,int ) ;
 void* ngx_pcalloc (int *,int) ;
 int ngx_queue_insert_head (int *,int *) ;
 int ngx_queue_remove (int *) ;
 int ngx_shmtx_lock (int *) ;
 int ngx_shmtx_unlock (int *) ;

ngx_int_t
ngx_http_tfs_local_block_cache_batch_lookup(
    ngx_http_tfs_local_block_cache_ctx_t *ctx,
    ngx_pool_t *pool, ngx_log_t *log, ngx_array_t *keys, ngx_array_t *kvs)
{
    double hit_ratio;
    ngx_int_t rc;
    ngx_uint_t i, hash, hit_count;
    ngx_slab_pool_t *shpool;
    ngx_rbtree_node_t *node, *sentinel;
    ngx_http_tfs_block_cache_kv_t *kv;
    ngx_http_tfs_block_cache_key_t *key;
    ngx_http_tfs_block_cache_node_t *bcn;
    ngx_http_tfs_block_cache_value_t *value;

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, log, 0,
                   "batch lookup local block cache, block count: %ui",
                   keys->nelts);

    key = keys->elts;
    shpool = ctx->shpool;
    rc = NGX_ERROR;
    ngx_shmtx_lock(&shpool->mutex);

    sentinel = ctx->sh->rbtree.sentinel;
    hit_count = 0;

    for (i = 0; i < keys->nelts; i++, key++) {
        node = ctx->sh->rbtree.root;
        hash = ngx_murmur_hash2((u_char*)key,
                                NGX_HTTP_TFS_BLOCK_CACHE_KEY_SIZE);

        while (node != sentinel) {

            if (hash < node->key) {
                node = node->left;
                continue;
            }

            if (hash > node->key) {
                node = node->right;
                continue;
            }


            bcn = (ngx_http_tfs_block_cache_node_t *) &node->color;
            rc = ngx_http_tfs_block_cache_cmp(key, &bcn->key);
            if (rc == 0) {
                value = ngx_pcalloc(pool,
                                    sizeof(ngx_http_tfs_block_cache_value_t));
                if (value == ((void*)0)) {
                    ngx_shmtx_unlock(&shpool->mutex);
                    return NGX_ERROR;
                }

                value->ds_count = bcn->count;
                value->ds_addrs = ngx_pcalloc(pool,
                                            value->ds_count * sizeof(uint64_t));
                if (value->ds_addrs == ((void*)0)) {
                    ngx_shmtx_unlock(&shpool->mutex);
                    return NGX_ERROR;
                }
                ngx_memcpy(value->ds_addrs, bcn->data,
                           value->ds_count * sizeof(uint64_t));

                kv = (ngx_http_tfs_block_cache_kv_t *)ngx_array_push(kvs);
                kv->key = key;
                kv->value = value;

                ngx_queue_remove(&bcn->queue);
                ngx_queue_insert_head(&ctx->sh->queue, &bcn->queue);
                hit_count++;
                break;
            }
            node = (rc < 0) ? node->left : node->right;
        }

        if (node == sentinel) {
            ctx->sh->miss_count++;
        }
    }

    ctx->sh->hit_count += hit_count;
    if (ctx->sh->hit_count >= NGX_HTTP_TFS_BLOCK_CACHE_STAT_COUNT) {
        hit_ratio = 100 * (double)((double)ctx->sh->hit_count
                                   / (double)(ctx->sh->hit_count
                                              + ctx->sh->miss_count));
        ngx_log_error(NGX_LOG_INFO, log, 0,
                      "local block cache hit_ratio: %.2f%%",
                      hit_ratio);
        ctx->sh->hit_count = 0;
        ctx->sh->miss_count = 0;
    }

    ngx_shmtx_unlock(&shpool->mutex);

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, log, 0,
                   "batch lookup local block cache, hit_count: %ui",
                   kvs->nelts);


    if (hit_count < keys->nelts) {
        rc = NGX_DECLINED;
    }

    return rc;
}
