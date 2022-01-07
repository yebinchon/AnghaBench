
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_10__ {int pool; } ;
typedef TYPE_1__ ngx_http_request_t ;
typedef int ngx_http_grpc_frame_t ;
struct TYPE_11__ {int free; } ;
typedef TYPE_2__ ngx_http_grpc_ctx_t ;
struct TYPE_12__ {TYPE_4__* buf; } ;
typedef TYPE_3__ ngx_chain_t ;
typedef scalar_t__ ngx_buf_tag_t ;
struct TYPE_13__ {int temporary; int flush; scalar_t__ tag; int * end; int * last; int * pos; int * start; } ;
typedef TYPE_4__ ngx_buf_t ;


 TYPE_3__* ngx_chain_get_free_buf (int ,int *) ;
 int ngx_http_grpc_body_output_filter ;
 int ngx_memzero (TYPE_4__*,int) ;
 int * ngx_palloc (int ,int) ;

__attribute__((used)) static ngx_chain_t *
ngx_http_grpc_get_buf(ngx_http_request_t *r, ngx_http_grpc_ctx_t *ctx)
{
    u_char *start;
    ngx_buf_t *b;
    ngx_chain_t *cl;

    cl = ngx_chain_get_free_buf(r->pool, &ctx->free);
    if (cl == ((void*)0)) {
        return ((void*)0);
    }

    b = cl->buf;
    start = b->start;

    if (start == ((void*)0)) {






        start = ngx_palloc(r->pool, 2 * sizeof(ngx_http_grpc_frame_t) + 8);
        if (start == ((void*)0)) {
            return ((void*)0);
        }

    }

    ngx_memzero(b, sizeof(ngx_buf_t));

    b->start = start;
    b->pos = start;
    b->last = start;
    b->end = start + 2 * sizeof(ngx_http_grpc_frame_t) + 8;

    b->tag = (ngx_buf_tag_t) &ngx_http_grpc_body_output_filter;
    b->temporary = 1;
    b->flush = 1;

    return cl;
}
