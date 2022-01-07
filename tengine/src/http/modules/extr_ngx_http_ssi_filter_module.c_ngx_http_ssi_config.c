
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ len; int data; } ;
typedef TYPE_2__ ngx_str_t ;
typedef int ngx_int_t ;
struct TYPE_8__ {int * data; scalar_t__ len; } ;
struct TYPE_10__ {TYPE_2__ errmsg; TYPE_1__ timefmt; } ;
typedef TYPE_3__ ngx_http_ssi_ctx_t ;
struct TYPE_11__ {int pool; } ;
typedef TYPE_4__ ngx_http_request_t ;


 int NGX_ERROR ;
 size_t NGX_HTTP_SSI_CONFIG_ERRMSG ;
 size_t NGX_HTTP_SSI_CONFIG_TIMEFMT ;
 int NGX_OK ;
 int ngx_cpystrn (int *,int ,scalar_t__) ;
 int * ngx_pnalloc (int ,scalar_t__) ;

__attribute__((used)) static ngx_int_t
ngx_http_ssi_config(ngx_http_request_t *r, ngx_http_ssi_ctx_t *ctx,
    ngx_str_t **params)
{
    ngx_str_t *value;

    value = params[NGX_HTTP_SSI_CONFIG_TIMEFMT];

    if (value) {
        ctx->timefmt.len = value->len;
        ctx->timefmt.data = ngx_pnalloc(r->pool, value->len + 1);
        if (ctx->timefmt.data == ((void*)0)) {
            return NGX_ERROR;
        }

        ngx_cpystrn(ctx->timefmt.data, value->data, value->len + 1);
    }

    value = params[NGX_HTTP_SSI_CONFIG_ERRMSG];

    if (value) {
        ctx->errmsg = *value;
    }

    return NGX_OK;
}
