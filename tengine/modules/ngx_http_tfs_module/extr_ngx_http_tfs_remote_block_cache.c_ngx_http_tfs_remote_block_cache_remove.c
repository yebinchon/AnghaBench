
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_pool_t ;
typedef int ngx_log_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_6__ {int tair_instance; } ;
typedef TYPE_1__ ngx_http_tfs_remote_block_cache_ctx_t ;
struct TYPE_7__ {int block_id; int ns_addr; } ;
typedef TYPE_2__ ngx_http_tfs_block_cache_key_t ;
struct TYPE_8__ {int len; int * data; int type; } ;
typedef TYPE_3__ ngx_http_tair_data_t ;
typedef int ngx_array_t ;


 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_TAIR_INT ;
 int NGX_HTTP_TFS_BLOCK_CACHE_KEY_SIZE ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ ngx_array_init (int *,int *,int,int) ;
 scalar_t__ ngx_array_push (int *) ;
 int * ngx_create_pool (int,int *) ;
 int ngx_http_tfs_remote_block_cache_dummy_handler ;
 int ngx_http_tfs_tair_delete_helper (int ,int *,int *,int *,int ,void*) ;
 int ngx_log_debug2 (int ,int *,int ,char*,int ,int ) ;

void
ngx_http_tfs_remote_block_cache_remove(
    ngx_http_tfs_remote_block_cache_ctx_t *ctx,
    ngx_pool_t *pool, ngx_log_t *log, ngx_http_tfs_block_cache_key_t* key)
{
    ngx_int_t rc;
    ngx_pool_t *tmp_pool;
    ngx_array_t tair_keys;
    ngx_http_tair_data_t *tair_key;

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, log, 0,
                   "remove remote block cache, ns addr: %uL, block id: %uD",
                   key->ns_addr, key->block_id);

    rc = ngx_array_init(&tair_keys, pool, 1, sizeof(ngx_http_tair_data_t));
    if (rc == NGX_ERROR) {
        return;
    }
    tair_key = (ngx_http_tair_data_t*) ngx_array_push(&tair_keys);

    tair_key->type = NGX_HTTP_TAIR_INT;
    tair_key->data = (u_char *)key;
    tair_key->len = NGX_HTTP_TFS_BLOCK_CACHE_KEY_SIZE;




    tmp_pool = ngx_create_pool(4096, log);
    if (tmp_pool == ((void*)0)) {
        return;
    }

    (void) ngx_http_tfs_tair_delete_helper(
                                  ctx->tair_instance,
                                  tmp_pool, log,
                                  &tair_keys,
                                  ngx_http_tfs_remote_block_cache_dummy_handler,
                                  (void *)tmp_pool);

}
