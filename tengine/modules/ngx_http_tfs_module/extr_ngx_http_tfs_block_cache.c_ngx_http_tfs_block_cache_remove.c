
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int ngx_pool_t ;
typedef int ngx_log_t ;
typedef int ngx_http_tfs_block_cache_key_t ;
struct TYPE_3__ {int use_cache; int remote_ctx; int local_ctx; } ;
typedef TYPE_1__ ngx_http_tfs_block_cache_ctx_t ;


 int NGX_HTTP_TFS_LOCAL_BLOCK_CACHE ;
 scalar_t__ NGX_HTTP_TFS_NO_BLOCK_CACHE ;
 scalar_t__ NGX_HTTP_TFS_REMOTE_BLOCK_CACHE ;
 int ngx_http_tfs_local_block_cache_remove (int ,int *,int *) ;
 int ngx_http_tfs_remote_block_cache_remove (int *,int *,int *,int *) ;

void
ngx_http_tfs_block_cache_remove(ngx_http_tfs_block_cache_ctx_t *ctx,
    ngx_pool_t *pool, ngx_log_t *log, ngx_http_tfs_block_cache_key_t* key,
    uint8_t hit_status)
{
    if (hit_status != NGX_HTTP_TFS_NO_BLOCK_CACHE
        && (ctx->use_cache & NGX_HTTP_TFS_LOCAL_BLOCK_CACHE))
    {
        ngx_http_tfs_local_block_cache_remove(ctx->local_ctx, log, key);
    }

    if (hit_status == NGX_HTTP_TFS_REMOTE_BLOCK_CACHE) {
        ngx_http_tfs_remote_block_cache_remove(&ctx->remote_ctx,
                                               pool, log, key);
    }
}
