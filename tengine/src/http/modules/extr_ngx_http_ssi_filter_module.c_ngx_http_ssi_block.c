
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ngx_str_t ;
typedef int ngx_int_t ;
struct TYPE_10__ {int block; scalar_t__ output; int * blocks; } ;
typedef TYPE_2__ ngx_http_ssi_ctx_t ;
struct TYPE_11__ {scalar_t__ count; int * bufs; int name; } ;
typedef TYPE_3__ ngx_http_ssi_block_t ;
struct TYPE_12__ {int pool; int main; TYPE_1__* connection; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_9__ {int log; } ;


 size_t NGX_HTTP_SSI_BLOCK_NAME ;
 int NGX_HTTP_SSI_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_OK ;
 int * ngx_array_create (int ,int,int) ;
 TYPE_3__* ngx_array_push (int *) ;
 TYPE_2__* ngx_http_get_module_ctx (int ,int ) ;
 int ngx_http_ssi_filter_module ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;

__attribute__((used)) static ngx_int_t
ngx_http_ssi_block(ngx_http_request_t *r, ngx_http_ssi_ctx_t *ctx,
    ngx_str_t **params)
{
    ngx_http_ssi_ctx_t *mctx;
    ngx_http_ssi_block_t *bl;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "ssi block");

    mctx = ngx_http_get_module_ctx(r->main, ngx_http_ssi_filter_module);

    if (mctx->blocks == ((void*)0)) {
        mctx->blocks = ngx_array_create(r->pool, 4,
                                        sizeof(ngx_http_ssi_block_t));
        if (mctx->blocks == ((void*)0)) {
            return NGX_HTTP_SSI_ERROR;
        }
    }

    bl = ngx_array_push(mctx->blocks);
    if (bl == ((void*)0)) {
        return NGX_HTTP_SSI_ERROR;
    }

    bl->name = *params[NGX_HTTP_SSI_BLOCK_NAME];
    bl->bufs = ((void*)0);
    bl->count = 0;

    ctx->output = 0;
    ctx->block = 1;

    return NGX_OK;
}
