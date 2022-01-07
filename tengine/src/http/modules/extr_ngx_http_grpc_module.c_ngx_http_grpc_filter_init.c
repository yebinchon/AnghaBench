
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_4__ {int length; } ;
typedef TYPE_1__ ngx_http_upstream_t ;
struct TYPE_5__ {TYPE_1__* upstream; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_6__ {scalar_t__ end_stream; TYPE_2__* request; } ;
typedef TYPE_3__ ngx_http_grpc_ctx_t ;


 int NGX_OK ;

__attribute__((used)) static ngx_int_t
ngx_http_grpc_filter_init(void *data)
{
    ngx_http_grpc_ctx_t *ctx = data;

    ngx_http_request_t *r;
    ngx_http_upstream_t *u;

    r = ctx->request;
    u = r->upstream;

    u->length = 1;

    if (ctx->end_stream) {
        u->length = 0;
    }

    return NGX_OK;
}
