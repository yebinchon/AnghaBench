
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ use; } ;
typedef TYPE_1__ ngx_event_conf_t ;
struct TYPE_7__ {int conf_ctx; } ;
typedef TYPE_2__ ngx_cycle_t ;
struct TYPE_8__ {scalar_t__ ctx_index; } ;


 char* NGX_CONF_OK ;
 int ngx_event_core_module ;
 TYPE_1__* ngx_event_get_conf (int ,int ) ;
 TYPE_3__ ngx_select_module ;

__attribute__((used)) static char *
ngx_select_init_conf(ngx_cycle_t *cycle, void *conf)
{
    ngx_event_conf_t *ecf;

    ecf = ngx_event_get_conf(cycle->conf_ctx, ngx_event_core_module);

    if (ecf->use != ngx_select_module.ctx_index) {
        return NGX_CONF_OK;
    }

    return NGX_CONF_OK;
}
