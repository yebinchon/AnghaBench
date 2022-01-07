
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_int_t ;
typedef int ngx_http_request_t ;
struct TYPE_3__ {int * connection; scalar_t__ status; scalar_t__ done; scalar_t__ end_stream; scalar_t__ parsing_headers; scalar_t__ output_blocked; scalar_t__ output_closed; scalar_t__ header_sent; scalar_t__ state; } ;
typedef TYPE_1__ ngx_http_grpc_ctx_t ;


 int NGX_OK ;
 TYPE_1__* ngx_http_get_module_ctx (int *,int ) ;
 int ngx_http_grpc_module ;

__attribute__((used)) static ngx_int_t
ngx_http_grpc_reinit_request(ngx_http_request_t *r)
{
    ngx_http_grpc_ctx_t *ctx;

    ctx = ngx_http_get_module_ctx(r, ngx_http_grpc_module);

    if (ctx == ((void*)0)) {
        return NGX_OK;
    }

    ctx->state = 0;
    ctx->header_sent = 0;
    ctx->output_closed = 0;
    ctx->output_blocked = 0;
    ctx->parsing_headers = 0;
    ctx->end_stream = 0;
    ctx->done = 0;
    ctx->status = 0;
    ctx->connection = ((void*)0);

    return NGX_OK;
}
