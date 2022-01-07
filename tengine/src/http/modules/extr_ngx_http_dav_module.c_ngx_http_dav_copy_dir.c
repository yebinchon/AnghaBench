
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_8__ {int log; int access; TYPE_4__* data; } ;
typedef TYPE_2__ ngx_tree_ctx_t ;
struct TYPE_9__ {size_t len; int * data; } ;
typedef TYPE_3__ ngx_str_t ;
typedef int ngx_int_t ;
struct TYPE_7__ {size_t len; int data; } ;
struct TYPE_10__ {size_t len; TYPE_1__ path; } ;
typedef TYPE_4__ ngx_http_dav_copy_ctx_t ;


 int NGX_ABORT ;
 scalar_t__ NGX_FILE_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_OK ;
 int * ngx_alloc (size_t,int ) ;
 int * ngx_cpymem (int *,int ,size_t) ;
 int ngx_cpystrn (int *,int *,size_t) ;
 scalar_t__ ngx_create_dir (int *,int ) ;
 int ngx_create_dir_n ;
 int ngx_dir_access (int ) ;
 int ngx_errno ;
 int ngx_free (int *) ;
 int ngx_http_dav_error (int ,int ,int ,int ,int *) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_dav_copy_dir(ngx_tree_ctx_t *ctx, ngx_str_t *path)
{
    u_char *p, *dir;
    size_t len;
    ngx_http_dav_copy_ctx_t *copy;

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, ctx->log, 0,
                   "http copy dir: \"%s\"", path->data);

    copy = ctx->data;

    len = copy->path.len + path->len;

    dir = ngx_alloc(len + 1, ctx->log);
    if (dir == ((void*)0)) {
        return NGX_ABORT;
    }

    p = ngx_cpymem(dir, copy->path.data, copy->path.len);
    (void) ngx_cpystrn(p, path->data + copy->len, path->len - copy->len + 1);

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, ctx->log, 0,
                   "http copy dir to: \"%s\"", dir);

    if (ngx_create_dir(dir, ngx_dir_access(ctx->access)) == NGX_FILE_ERROR) {
        (void) ngx_http_dav_error(ctx->log, ngx_errno, 0, ngx_create_dir_n,
                                  dir);
    }

    ngx_free(dir);

    return NGX_OK;
}
