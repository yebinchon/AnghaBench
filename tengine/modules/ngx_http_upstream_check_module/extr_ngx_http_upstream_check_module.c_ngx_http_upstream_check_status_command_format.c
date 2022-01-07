
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_str_t ;
typedef int ngx_int_t ;
struct TYPE_3__ {int * format; } ;
typedef TYPE_1__ ngx_http_upstream_check_status_ctx_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 int * ngx_http_get_check_status_format_conf (int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_check_status_command_format(
    ngx_http_upstream_check_status_ctx_t *ctx, ngx_str_t *value)
{
    ctx->format = ngx_http_get_check_status_format_conf(value);
    if (ctx->format == ((void*)0)) {
        return NGX_ERROR;
    }

    return NGX_OK;
}
