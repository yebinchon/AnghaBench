
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ngx_int_t ;
typedef int ngx_http_variable_value_t ;
struct TYPE_4__ {scalar_t__ msie; } ;
struct TYPE_5__ {TYPE_1__ headers_in; } ;
typedef TYPE_2__ ngx_http_request_t ;


 int NGX_OK ;
 int ngx_http_variable_null_value ;
 int ngx_http_variable_true_value ;

__attribute__((used)) static ngx_int_t
ngx_http_msie_variable(ngx_http_request_t *r, ngx_http_variable_value_t *v,
    uintptr_t data)
{
    if (r->headers_in.msie) {
        *v = ngx_http_variable_true_value;
        return NGX_OK;
    }

    *v = ngx_http_variable_null_value;
    return NGX_OK;
}
