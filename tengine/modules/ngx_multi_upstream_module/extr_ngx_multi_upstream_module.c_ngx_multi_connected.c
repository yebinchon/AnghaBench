
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int connected; } ;
typedef TYPE_1__ ngx_multi_connection_t ;
typedef int ngx_flag_t ;
typedef int ngx_connection_t ;


 TYPE_1__* ngx_get_multi_connection (int *) ;

ngx_flag_t
ngx_multi_connected(ngx_connection_t *c)
{
    ngx_multi_connection_t *multi_c;

    multi_c = ngx_get_multi_connection(c);

    return multi_c->connected;
}
