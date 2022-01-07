
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_multi_connection_t ;
struct TYPE_3__ {int * multi_c; } ;
typedef TYPE_1__ ngx_connection_t ;



ngx_multi_connection_t*
ngx_get_multi_connection(ngx_connection_t *c)
{
    ngx_multi_connection_t *multi_c;

    multi_c = c->multi_c;

    return multi_c;
}
