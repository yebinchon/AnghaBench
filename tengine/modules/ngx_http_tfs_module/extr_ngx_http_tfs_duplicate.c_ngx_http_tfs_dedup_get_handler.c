
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_int_t ;
struct TYPE_9__ {int log; int pool; } ;
typedef TYPE_2__ ngx_http_tfs_t ;
struct TYPE_12__ {scalar_t__ len; int * data; } ;
struct TYPE_10__ {int dup_version; int file_ref_count; TYPE_5__ dup_file_name; TYPE_2__* data; } ;
typedef TYPE_3__ ngx_http_tfs_dedup_ctx_t ;
struct TYPE_11__ {int version; TYPE_1__* value; } ;
typedef TYPE_4__ ngx_http_tair_key_value_t ;
typedef int int32_t ;
struct TYPE_8__ {scalar_t__ len; int * data; } ;


 int NGX_ERROR ;
 int NGX_HTTP_ETAIR_SUCCESS ;
 int NGX_HTTP_TFS_DUPLICATE_INITIAL_MAGIC_VERSION ;
 scalar_t__ NGX_HTTP_TFS_DUPLICATE_VALUE_BASE_SIZE ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_OK ;
 int ngx_http_tfs_dedup_callback (TYPE_3__*,int ) ;
 int ngx_log_debug3 (int ,int ,int ,char*,TYPE_5__*,int ,int ) ;
 int ngx_memcpy (int *,int *,scalar_t__) ;
 int * ngx_pcalloc (int ,scalar_t__) ;

__attribute__((used)) static void
ngx_http_tfs_dedup_get_handler(ngx_http_tair_key_value_t *kv, ngx_int_t rc,
    void *data)
{
    u_char *p;
    ngx_http_tfs_t *t;
    ngx_http_tfs_dedup_ctx_t *ctx;

    ctx = data;
    t = ctx->data;

    if (rc == NGX_HTTP_ETAIR_SUCCESS) {
        p = kv->value->data;
        if (p != ((void*)0)
            && (kv->value->len > NGX_HTTP_TFS_DUPLICATE_VALUE_BASE_SIZE))
        {
            ctx->file_ref_count = *(int32_t *)p;
            p += sizeof(int32_t);
            ctx->dup_file_name.len = kv->value->len - sizeof(int32_t);
            ctx->dup_file_name.data = ngx_pcalloc(t->pool,
                                                  ctx->dup_file_name.len);
            if (ctx->dup_file_name.data == ((void*)0)) {
                rc = NGX_ERROR;

            } else {
                ngx_memcpy(ctx->dup_file_name.data, p, ctx->dup_file_name.len);
                rc = NGX_OK;
            }
            ctx->dup_version = kv->version;

        } else {
            rc = NGX_ERROR;
        }
        ngx_log_debug3(NGX_LOG_DEBUG_HTTP, t->log, 0,
                       "get duplicate info: "
                       "file name: %V, file ref count: %d, dup_version: %d",
                       &ctx->dup_file_name,
                       ctx->file_ref_count,
                       ctx->dup_version);

    } else {
        rc = NGX_ERROR;
        ctx->dup_version = NGX_HTTP_TFS_DUPLICATE_INITIAL_MAGIC_VERSION;
    }
    ngx_http_tfs_dedup_callback(ctx, rc);
}
