#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u_char ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  ngx_pool_t ;
typedef  int /*<<< orphan*/  ngx_log_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_6__ {int md5_sumed; int /*<<< orphan*/  tair_instance; int /*<<< orphan*/ * tair_key; int /*<<< orphan*/  file_data; } ;
typedef  TYPE_1__ ngx_http_tfs_dedup_ctx_t ;
struct TYPE_7__ {int /*<<< orphan*/  len; int /*<<< orphan*/ * data; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ ngx_http_tair_data_t ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_HTTP_TAIR_BYTEARRAY ; 
 int /*<<< orphan*/  NGX_HTTP_TFS_DUPLICATE_KEY_SIZE ; 
 int /*<<< orphan*/  NGX_HTTP_TFS_MD5_RESULT_LEN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  ngx_http_tfs_dedup_get_handler ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*) ; 

ngx_int_t
FUNC3(ngx_http_tfs_dedup_ctx_t *ctx,
    ngx_pool_t *pool, ngx_log_t * log)
{
    u_char               *p;
    ssize_t               data_len;
    ngx_int_t             rc;
    ngx_http_tair_data_t  tair_key;

    data_len = 0;

    rc = FUNC1(ctx->file_data, ctx->tair_key, &data_len, log);
    if (rc == NGX_ERROR) {
        return NGX_ERROR;
    }

    p = ctx->tair_key;
    p += NGX_HTTP_TFS_MD5_RESULT_LEN;

    *(uint32_t *) p = FUNC0(data_len);

    tair_key.type = NGX_HTTP_TAIR_BYTEARRAY;
    tair_key.data = ctx->tair_key;
    tair_key.len = NGX_HTTP_TFS_DUPLICATE_KEY_SIZE;

    ctx->md5_sumed = 1;

    rc = FUNC2(ctx->tair_instance, pool, log,
                                      &tair_key,
                                      ngx_http_tfs_dedup_get_handler,
                                      ctx);

    return rc;
}