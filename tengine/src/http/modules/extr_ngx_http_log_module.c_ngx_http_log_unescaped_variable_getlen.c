
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t len; scalar_t__ escape; scalar_t__ not_found; } ;
typedef TYPE_1__ ngx_http_variable_value_t ;
typedef int ngx_http_request_t ;


 TYPE_1__* ngx_http_get_indexed_variable (int *,uintptr_t) ;

__attribute__((used)) static size_t
ngx_http_log_unescaped_variable_getlen(ngx_http_request_t *r, uintptr_t data)
{
    ngx_http_variable_value_t *value;

    value = ngx_http_get_indexed_variable(r, data);

    if (value == ((void*)0) || value->not_found) {
        return 0;
    }

    value->escape = 0;

    return value->len;
}
