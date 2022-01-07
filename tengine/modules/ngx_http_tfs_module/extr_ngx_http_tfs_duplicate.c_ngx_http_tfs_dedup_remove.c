
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_char ;
typedef scalar_t__ ssize_t ;
typedef int ngx_pool_t ;
typedef int ngx_log_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_5__ {int md5_sumed; int tair_instance; int * tair_key; int file_data; } ;
typedef TYPE_1__ ngx_http_tfs_dedup_ctx_t ;
struct TYPE_6__ {int len; int * data; int type; } ;
typedef TYPE_2__ ngx_http_tair_data_t ;
typedef int ngx_array_t ;


 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_TAIR_BYTEARRAY ;
 int NGX_HTTP_TFS_DUPLICATE_KEY_SIZE ;
 int NGX_HTTP_TFS_MD5_RESULT_LEN ;
 int htonl (scalar_t__) ;
 scalar_t__ ngx_array_init (int *,int *,int,int) ;
 scalar_t__ ngx_array_push (int *) ;
 int ngx_http_tfs_dedup_remove_handler ;
 scalar_t__ ngx_http_tfs_sum_md5 (int ,int *,scalar_t__*,int *) ;
 scalar_t__ ngx_http_tfs_tair_delete_helper (int ,int *,int *,int *,int ,TYPE_1__*) ;

ngx_int_t
ngx_http_tfs_dedup_remove(ngx_http_tfs_dedup_ctx_t *ctx,
    ngx_pool_t *pool, ngx_log_t * log)
{
    u_char *p;
    ssize_t data_len;
    ngx_int_t rc;
    ngx_array_t tair_keys;
    ngx_http_tair_data_t *tair_key;

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

    rc = ngx_array_init(&tair_keys, pool, 1, sizeof(ngx_http_tair_data_t));
    if (rc == NGX_ERROR) {
        return rc;
    }
    tair_key = (ngx_http_tair_data_t*) ngx_array_push(&tair_keys);

    tair_key->type = NGX_HTTP_TAIR_BYTEARRAY;
    tair_key->data = ctx->tair_key;
    tair_key->len = NGX_HTTP_TFS_DUPLICATE_KEY_SIZE;

    rc = ngx_http_tfs_tair_delete_helper(ctx->tair_instance, pool, log,
                                         &tair_keys,
                                         ngx_http_tfs_dedup_remove_handler,
                                         ctx);

    return rc;
}
