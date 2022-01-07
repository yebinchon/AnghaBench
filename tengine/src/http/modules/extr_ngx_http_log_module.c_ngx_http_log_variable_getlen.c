
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {uintptr_t len; int escape; int data; scalar_t__ not_found; } ;
typedef TYPE_1__ ngx_http_variable_value_t ;
typedef int ngx_http_request_t ;


 TYPE_1__* ngx_http_get_indexed_variable (int *,uintptr_t) ;
 uintptr_t ngx_http_log_escape (int *,int ,uintptr_t) ;

__attribute__((used)) static size_t
ngx_http_log_variable_getlen(ngx_http_request_t *r, uintptr_t data)
{
    uintptr_t len;
    ngx_http_variable_value_t *value;

    value = ngx_http_get_indexed_variable(r, data);

    if (value == ((void*)0) || value->not_found) {
        return 1;
    }

    len = ngx_http_log_escape(((void*)0), value->data, value->len);

    value->escape = len ? 1 : 0;

    return value->len + len * 3;
}
