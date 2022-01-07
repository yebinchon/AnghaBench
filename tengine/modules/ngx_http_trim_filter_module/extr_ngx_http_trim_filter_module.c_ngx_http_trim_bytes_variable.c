
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_8__ {int not_found; int valid; scalar_t__ no_cacheable; int * data; int * len; } ;
typedef TYPE_1__ ngx_http_variable_value_t ;
struct TYPE_9__ {scalar_t__ tout; scalar_t__ tin; } ;
typedef TYPE_2__ ngx_http_trim_ctx_t ;
struct TYPE_10__ {int pool; } ;
typedef TYPE_3__ ngx_http_request_t ;


 int NGX_ERROR ;
 int NGX_OFF_T_LEN ;
 int NGX_OK ;
 TYPE_2__* ngx_http_get_module_ctx (TYPE_3__*,int ) ;
 int ngx_http_trim_filter_module ;
 int * ngx_pnalloc (int ,int ) ;
 int * ngx_sprintf (int *,char*,scalar_t__) ;

__attribute__((used)) static ngx_int_t
ngx_http_trim_bytes_variable(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{
    ngx_http_trim_ctx_t *ctx;

    ctx = ngx_http_get_module_ctx(r, ngx_http_trim_filter_module);

    if (ctx == ((void*)0)) {
        v->not_found = 1;
        return NGX_OK;
    }

    v->data = ngx_pnalloc(r->pool, NGX_OFF_T_LEN);
    if (v->data == ((void*)0)) {
        return NGX_ERROR;
    }

    v->len = ngx_sprintf(v->data, "%O", ctx->tin - ctx->tout) - v->data;
    v->valid = 1;
    v->no_cacheable = 0;
    v->not_found = 0;

    return NGX_OK;
}
