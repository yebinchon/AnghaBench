#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  ngx_pool_t ;
typedef  int /*<<< orphan*/  ngx_log_t ;
typedef  int /*<<< orphan*/  ngx_http_tfs_block_cache_key_t ;
struct TYPE_3__ {int use_cache; int /*<<< orphan*/  remote_ctx; int /*<<< orphan*/  local_ctx; } ;
typedef  TYPE_1__ ngx_http_tfs_block_cache_ctx_t ;

/* Variables and functions */
 int NGX_HTTP_TFS_LOCAL_BLOCK_CACHE ; 
 scalar_t__ NGX_HTTP_TFS_NO_BLOCK_CACHE ; 
 scalar_t__ NGX_HTTP_TFS_REMOTE_BLOCK_CACHE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC2(ngx_http_tfs_block_cache_ctx_t *ctx,
    ngx_pool_t *pool, ngx_log_t *log, ngx_http_tfs_block_cache_key_t* key,
    uint8_t hit_status)
{
    if (hit_status != NGX_HTTP_TFS_NO_BLOCK_CACHE
        && (ctx->use_cache & NGX_HTTP_TFS_LOCAL_BLOCK_CACHE))
    {
        FUNC0(ctx->local_ctx, log, key);
    }

    if (hit_status == NGX_HTTP_TFS_REMOTE_BLOCK_CACHE) {
        FUNC1(&ctx->remote_ctx,
                                               pool, log, key);
    }
}