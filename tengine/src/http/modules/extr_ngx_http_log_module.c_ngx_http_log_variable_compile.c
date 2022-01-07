
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef int ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_3__ {scalar_t__ data; int run; int getlen; scalar_t__ len; } ;
typedef TYPE_1__ ngx_http_log_op_t ;
typedef int ngx_conf_t ;


 scalar_t__ NGX_ERROR ;


 scalar_t__ NGX_OK ;
 scalar_t__ ngx_http_get_variable_index (int *,int *) ;
 int ngx_http_log_json_variable ;
 int ngx_http_log_json_variable_getlen ;
 int ngx_http_log_unescaped_variable ;
 int ngx_http_log_unescaped_variable_getlen ;
 int ngx_http_log_variable ;
 int ngx_http_log_variable_getlen ;

__attribute__((used)) static ngx_int_t
ngx_http_log_variable_compile(ngx_conf_t *cf, ngx_http_log_op_t *op,
    ngx_str_t *value, ngx_uint_t escape)
{
    ngx_int_t index;

    index = ngx_http_get_variable_index(cf, value);
    if (index == NGX_ERROR) {
        return NGX_ERROR;
    }

    op->len = 0;

    switch (escape) {
    case 129:
        op->getlen = ngx_http_log_json_variable_getlen;
        op->run = ngx_http_log_json_variable;
        break;

    case 128:
        op->getlen = ngx_http_log_unescaped_variable_getlen;
        op->run = ngx_http_log_unescaped_variable;
        break;

    default:
        op->getlen = ngx_http_log_variable_getlen;
        op->run = ngx_http_log_variable;
    }

    op->data = index;

    return NGX_OK;
}
