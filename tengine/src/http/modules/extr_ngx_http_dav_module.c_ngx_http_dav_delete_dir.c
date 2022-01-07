
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int log; } ;
typedef TYPE_1__ ngx_tree_ctx_t ;
struct TYPE_6__ {int data; } ;
typedef TYPE_2__ ngx_str_t ;
typedef int ngx_int_t ;


 scalar_t__ NGX_FILE_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_OK ;
 scalar_t__ ngx_delete_dir (int ) ;
 int ngx_delete_dir_n ;
 int ngx_errno ;
 int ngx_http_dav_error (int ,int ,int ,int ,int ) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_dav_delete_dir(ngx_tree_ctx_t *ctx, ngx_str_t *path)
{
    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, ctx->log, 0,
                   "http delete dir: \"%s\"", path->data);

    if (ngx_delete_dir(path->data) == NGX_FILE_ERROR) {



        (void) ngx_http_dav_error(ctx->log, ngx_errno, 0, ngx_delete_dir_n,
                                  path->data);
    }

    return NGX_OK;
}
