
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int u_char ;
typedef int ngx_pool_t ;
typedef int ngx_log_t ;
typedef int ngx_int_t ;
struct TYPE_10__ {int tair_instance; } ;
typedef TYPE_1__ ngx_http_tfs_remote_block_cache_ctx_t ;
struct TYPE_11__ {int ds_count; int ds_addrs; } ;
typedef TYPE_2__ ngx_http_tfs_block_cache_value_t ;
struct TYPE_12__ {int block_id; int ns_addr; } ;
typedef TYPE_3__ ngx_http_tfs_block_cache_key_t ;
struct TYPE_13__ {int len; void* type; int * data; } ;
typedef TYPE_4__ ngx_http_tair_data_t ;


 int NGX_ERROR ;
 void* NGX_HTTP_TAIR_INT ;
 int NGX_HTTP_TFS_BLOCK_CACHE_KEY_SIZE ;
 int NGX_HTTP_TFS_REMOTE_BLOCK_CACHE_VALUE_BASE_SIZE ;
 int NGX_LOG_DEBUG_HTTP ;
 int * ngx_create_pool (int,int *) ;
 int ngx_http_tfs_remote_block_cache_dummy_handler ;
 int ngx_http_tfs_tair_put_helper (int ,int *,int *,TYPE_4__*,TYPE_4__*,int ,int ,int ,void*) ;
 int ngx_log_debug2 (int ,int *,int ,char*,int ,int ) ;
 int ngx_memcpy (int *,int ,int) ;
 int * ngx_pcalloc (int *,int) ;

ngx_int_t
ngx_http_tfs_remote_block_cache_insert(
    ngx_http_tfs_remote_block_cache_ctx_t *ctx,
    ngx_pool_t *pool, ngx_log_t *log,
    ngx_http_tfs_block_cache_key_t *key,
    ngx_http_tfs_block_cache_value_t *value)
{
    ngx_int_t rc;
    ngx_pool_t *tmp_pool;
    ngx_http_tair_data_t tair_key, tair_value;

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, log, 0,
                   "insert remote block cache, "
                   "ns addr: %uL, block id: %uD",
                   key->ns_addr, key->block_id);

    tair_key.type = NGX_HTTP_TAIR_INT;
    tair_key.data = (u_char *)key;
    tair_key.len = NGX_HTTP_TFS_BLOCK_CACHE_KEY_SIZE;

    tair_value.len = NGX_HTTP_TFS_REMOTE_BLOCK_CACHE_VALUE_BASE_SIZE
                      + value->ds_count * sizeof(uint64_t);
    tair_value.data = ngx_pcalloc(pool, tair_value.len);
    if (tair_value.data == ((void*)0)) {
        return NGX_ERROR;
    }
    *(uint32_t*)tair_value.data = value->ds_count;
    ngx_memcpy(tair_value.data+ NGX_HTTP_TFS_REMOTE_BLOCK_CACHE_VALUE_BASE_SIZE,
               value->ds_addrs, value->ds_count * sizeof(uint64_t));
    tair_value.type = NGX_HTTP_TAIR_INT;




    tmp_pool = ngx_create_pool(4096, log);
    if (tmp_pool == ((void*)0)) {
        return NGX_ERROR;
    }

    rc = ngx_http_tfs_tair_put_helper(
                                  ctx->tair_instance,
                                  tmp_pool, log,
                                  &tair_key, &tair_value,
                                  0 , 0 ,
                                  ngx_http_tfs_remote_block_cache_dummy_handler,
                                  (void *)tmp_pool);

    return rc;
}
