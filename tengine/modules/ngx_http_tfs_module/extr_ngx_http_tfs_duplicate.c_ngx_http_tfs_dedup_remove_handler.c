
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_int_t ;
typedef int ngx_http_tfs_dedup_ctx_t ;


 int NGX_ERROR ;
 int NGX_HTTP_ETAIR_SUCCESS ;
 int NGX_OK ;
 int ngx_http_tfs_dedup_callback (int *,int ) ;

__attribute__((used)) static void
ngx_http_tfs_dedup_remove_handler(ngx_int_t rc, void *data)
{
    ngx_http_tfs_dedup_ctx_t *ctx;

    ctx = data;

    if (rc == NGX_HTTP_ETAIR_SUCCESS) {
        rc = NGX_OK;

    } else {
        rc = NGX_ERROR;
    }

    ngx_http_tfs_dedup_callback(ctx, rc);
}
