
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_pool_t ;
typedef int ngx_log_t ;
typedef int ngx_http_tfs_block_cache_value_t ;
typedef int ngx_http_tfs_block_cache_key_t ;
struct TYPE_3__ {int use_cache; int local_ctx; int remote_ctx; } ;
typedef TYPE_1__ ngx_http_tfs_block_cache_ctx_t ;


 int NGX_HTTP_TFS_LOCAL_BLOCK_CACHE ;
 int NGX_HTTP_TFS_REMOTE_BLOCK_CACHE ;
 int ngx_http_tfs_local_block_cache_insert (int ,int *,int *,int *) ;
 int ngx_http_tfs_remote_block_cache_insert (int *,int *,int *,int *,int *) ;

void
ngx_http_tfs_block_cache_insert(ngx_http_tfs_block_cache_ctx_t *ctx,
    ngx_pool_t *pool, ngx_log_t *log, ngx_http_tfs_block_cache_key_t *key,
    ngx_http_tfs_block_cache_value_t *value)
{
    if (ctx->use_cache & NGX_HTTP_TFS_REMOTE_BLOCK_CACHE) {
        ngx_http_tfs_remote_block_cache_insert(&ctx->remote_ctx,
                                               pool, log, key, value);
    }

    if (ctx->use_cache & NGX_HTTP_TFS_LOCAL_BLOCK_CACHE) {
        ngx_http_tfs_local_block_cache_insert(ctx->local_ctx, log, key, value);
    }
}
