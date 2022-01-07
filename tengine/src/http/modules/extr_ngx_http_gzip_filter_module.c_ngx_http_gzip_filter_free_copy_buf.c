
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int pool; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_9__ {TYPE_4__* copied; } ;
typedef TYPE_3__ ngx_http_gzip_ctx_t ;
struct TYPE_10__ {TYPE_1__* buf; struct TYPE_10__* next; } ;
typedef TYPE_4__ ngx_chain_t ;
struct TYPE_7__ {int start; } ;


 int ngx_pfree (int ,int ) ;

__attribute__((used)) static void
ngx_http_gzip_filter_free_copy_buf(ngx_http_request_t *r,
    ngx_http_gzip_ctx_t *ctx)
{
    ngx_chain_t *cl;

    for (cl = ctx->copied; cl; cl = cl->next) {
        ngx_pfree(r->pool, cl->buf->start);
    }

    ctx->copied = ((void*)0);
}
