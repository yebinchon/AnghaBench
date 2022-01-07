
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int events; } ;
typedef TYPE_1__ ngx_eventport_conf_t ;
typedef int ngx_cycle_t ;


 char* NGX_CONF_OK ;
 int ngx_conf_init_uint_value (int ,int) ;

__attribute__((used)) static char *
ngx_eventport_init_conf(ngx_cycle_t *cycle, void *conf)
{
    ngx_eventport_conf_t *epcf = conf;

    ngx_conf_init_uint_value(epcf->events, 32);

    return NGX_CONF_OK;
}
