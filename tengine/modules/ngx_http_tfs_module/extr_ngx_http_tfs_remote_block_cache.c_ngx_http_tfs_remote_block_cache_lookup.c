
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_pool_t ;
typedef int ngx_log_t ;
typedef int ngx_int_t ;
struct TYPE_7__ {int tair_instance; } ;
typedef TYPE_1__ ngx_http_tfs_remote_block_cache_ctx_t ;
struct TYPE_8__ {int block_id; int ns_addr; } ;
typedef TYPE_2__ ngx_http_tfs_block_cache_key_t ;
struct TYPE_9__ {int len; int * data; int type; } ;
typedef TYPE_3__ ngx_http_tair_data_t ;


 int NGX_HTTP_TAIR_INT ;
 int NGX_HTTP_TFS_BLOCK_CACHE_KEY_SIZE ;
 int NGX_LOG_DEBUG_HTTP ;
 int ngx_http_tfs_remote_block_cache_get_handler ;
 int ngx_http_tfs_tair_get_helper (int ,int *,int *,TYPE_3__*,int ,void*) ;
 int ngx_log_debug2 (int ,int *,int ,char*,int ,int ) ;

ngx_int_t
ngx_http_tfs_remote_block_cache_lookup(
    ngx_http_tfs_remote_block_cache_ctx_t *ctx,
    ngx_pool_t *pool, ngx_log_t *log, ngx_http_tfs_block_cache_key_t* key)
{
    ngx_int_t rc;
    ngx_http_tair_data_t tair_key;

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, log, 0,
                   "lookup remote block cache, ns addr: %uL, block id: %uD",
                   key->ns_addr, key->block_id);

    tair_key.type = NGX_HTTP_TAIR_INT;
    tair_key.data = (u_char *)key;
    tair_key.len = NGX_HTTP_TFS_BLOCK_CACHE_KEY_SIZE;

    rc = ngx_http_tfs_tair_get_helper(
                                    ctx->tair_instance,
                                    pool, log,
                                    &tair_key,
                                    ngx_http_tfs_remote_block_cache_get_handler,
                                    (void *)ctx);

    return rc;
}
