
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_tree_ctx_t ;
typedef int ngx_str_t ;
typedef int ngx_int_t ;


 int NGX_OK ;

__attribute__((used)) static ngx_int_t
ngx_http_file_cache_noop(ngx_tree_ctx_t *ctx, ngx_str_t *path)
{
    return NGX_OK;
}
