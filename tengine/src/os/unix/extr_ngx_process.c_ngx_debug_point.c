
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int debug_points; } ;
typedef TYPE_1__ ngx_core_conf_t ;
struct TYPE_4__ {int conf_ctx; } ;




 int SIGSTOP ;
 int ngx_abort () ;
 int ngx_core_module ;
 TYPE_2__* ngx_cycle ;
 scalar_t__ ngx_get_conf (int ,int ) ;
 int raise (int ) ;

void
ngx_debug_point(void)
{
    ngx_core_conf_t *ccf;

    ccf = (ngx_core_conf_t *) ngx_get_conf(ngx_cycle->conf_ctx,
                                           ngx_core_module);

    switch (ccf->debug_points) {

    case 128:
        raise(SIGSTOP);
        break;

    case 129:
        ngx_abort();
    }
}
