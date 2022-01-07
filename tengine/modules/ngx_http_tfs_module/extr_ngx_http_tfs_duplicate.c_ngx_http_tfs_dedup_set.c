
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_char ;
typedef scalar_t__ ssize_t ;
typedef int ngx_pool_t ;
typedef int ngx_log_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_10__ {int len; int * data; } ;
struct TYPE_8__ {int md5_sumed; int dup_version; int tair_instance; int file_ref_count; TYPE_3__ dup_file_name; int * tair_key; int file_data; } ;
typedef TYPE_1__ ngx_http_tfs_dedup_ctx_t ;
struct TYPE_9__ {int len; void* type; int * data; } ;
typedef TYPE_2__ ngx_http_tair_data_t ;


 scalar_t__ NGX_ERROR ;
 void* NGX_HTTP_TAIR_BYTEARRAY ;
 int NGX_HTTP_TFS_DUPLICATE_KEY_SIZE ;
 int NGX_HTTP_TFS_DUPLICATE_VALUE_BASE_SIZE ;
 int NGX_HTTP_TFS_MD5_RESULT_LEN ;
 int NGX_LOG_DEBUG_HTTP ;
 int htonl (scalar_t__) ;
 int ngx_http_tfs_dedup_set_handler ;
 scalar_t__ ngx_http_tfs_sum_md5 (int ,int *,scalar_t__*,int *) ;
 scalar_t__ ngx_http_tfs_tair_put_helper (int ,int *,int *,TYPE_2__*,TYPE_2__*,int ,int ,int ,TYPE_1__*) ;
 int ngx_log_debug3 (int ,int *,int ,char*,TYPE_3__*,int ,int ) ;
 int ngx_memcpy (int *,int *,int) ;
 int * ngx_pcalloc (int *,int) ;

ngx_int_t
ngx_http_tfs_dedup_set(ngx_http_tfs_dedup_ctx_t *ctx,
    ngx_pool_t *pool, ngx_log_t * log)
{
    u_char *p;
    ssize_t data_len;
    ngx_int_t rc;
    ngx_http_tair_data_t tair_key, tair_value;

    data_len = 0;

    if (!ctx->md5_sumed) {
        rc = ngx_http_tfs_sum_md5(ctx->file_data, ctx->tair_key, &data_len,
                                  log);
        if (rc == NGX_ERROR) {
            return NGX_ERROR;
        }

        p = ctx->tair_key;
        p += NGX_HTTP_TFS_MD5_RESULT_LEN;

        *(uint32_t *) p = htonl(data_len);
        ctx->md5_sumed = 1;
    }

    tair_key.len = NGX_HTTP_TFS_DUPLICATE_KEY_SIZE;
    tair_key.data = ctx->tair_key;
    tair_key.type = NGX_HTTP_TAIR_BYTEARRAY;

    tair_value.len =
        NGX_HTTP_TFS_DUPLICATE_VALUE_BASE_SIZE + ctx->dup_file_name.len;
    tair_value.data = ngx_pcalloc(pool, tair_value.len);
    if (tair_value.data == ((void*)0)) {
        return NGX_ERROR;
    }
    ngx_memcpy(tair_value.data, &ctx->file_ref_count,
               NGX_HTTP_TFS_DUPLICATE_VALUE_BASE_SIZE);
    ngx_memcpy(tair_value.data + NGX_HTTP_TFS_DUPLICATE_VALUE_BASE_SIZE,
               ctx->dup_file_name.data, ctx->dup_file_name.len);
    tair_value.type = NGX_HTTP_TAIR_BYTEARRAY;
    ngx_log_debug3(NGX_LOG_DEBUG_HTTP, log, 0,
                   "set duplicate info: "
                   "file name: %V, file ref count: %d, dup_version: %d",
                   &ctx->dup_file_name,
                   ctx->file_ref_count,
                   ctx->dup_version);

    rc = ngx_http_tfs_tair_put_helper(ctx->tair_instance, pool, log,
                                      &tair_key, &tair_value, 0 ,
                                      ctx->dup_version,
                                      ngx_http_tfs_dedup_set_handler, ctx);

    return rc;
}
