
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef int ngx_str_t ;
struct TYPE_2__ {int value; } ;


 TYPE_1__* ngx_http_v2_static_table ;

ngx_str_t *
ngx_http_v2_get_static_value(ngx_uint_t index)
{
    return &ngx_http_v2_static_table[index - 1].value;
}
