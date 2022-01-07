
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_tree_ctx_t ;
struct TYPE_3__ {int len; scalar_t__ data; } ;
typedef TYPE_1__ ngx_str_t ;
typedef int ngx_int_t ;


 int NGX_DECLINED ;
 int NGX_OK ;
 scalar_t__ ngx_strncmp (scalar_t__,char*,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_file_cache_manage_directory(ngx_tree_ctx_t *ctx, ngx_str_t *path)
{
    if (path->len >= 5
        && ngx_strncmp(path->data + path->len - 5, "/temp", 5) == 0)
    {
        return NGX_DECLINED;
    }

    return NGX_OK;
}
