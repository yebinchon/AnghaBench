
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int not_found; int valid; int data; int len; scalar_t__ no_cacheable; } ;
typedef TYPE_2__ ngx_variable_value_t ;
struct TYPE_6__ {int data; int len; } ;
struct TYPE_8__ {TYPE_1__ host; } ;
typedef TYPE_3__ ngx_stream_ssl_preread_ctx_t ;
typedef int ngx_stream_session_t ;
typedef int ngx_int_t ;


 int NGX_OK ;
 TYPE_3__* ngx_stream_get_module_ctx (int *,int ) ;
 int ngx_stream_ssl_preread_module ;

__attribute__((used)) static ngx_int_t
ngx_stream_ssl_preread_server_name_variable(ngx_stream_session_t *s,
    ngx_variable_value_t *v, uintptr_t data)
{
    ngx_stream_ssl_preread_ctx_t *ctx;

    ctx = ngx_stream_get_module_ctx(s, ngx_stream_ssl_preread_module);

    if (ctx == ((void*)0)) {
        v->not_found = 1;
        return NGX_OK;
    }

    v->valid = 1;
    v->no_cacheable = 0;
    v->not_found = 0;
    v->len = ctx->host.len;
    v->data = ctx->host.data;

    return NGX_OK;
}
