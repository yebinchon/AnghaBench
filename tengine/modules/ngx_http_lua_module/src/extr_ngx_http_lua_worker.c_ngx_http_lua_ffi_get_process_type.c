
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ master; } ;
typedef TYPE_1__ ngx_core_conf_t ;
struct TYPE_4__ {int conf_ctx; } ;


 scalar_t__ NGX_PROCESS_HELPER ;
 int NGX_PROCESS_MASTER ;
 int NGX_PROCESS_PRIVILEGED_AGENT ;
 scalar_t__ NGX_PROCESS_SINGLE ;
 int ngx_core_module ;
 TYPE_2__* ngx_cycle ;
 scalar_t__ ngx_get_conf (int ,int ) ;
 scalar_t__ ngx_is_privileged_agent ;
 scalar_t__ ngx_process ;

int
ngx_http_lua_ffi_get_process_type(void)
{
    ngx_core_conf_t *ccf;
    if (ngx_process == NGX_PROCESS_SINGLE) {
        ccf = (ngx_core_conf_t *) ngx_get_conf(ngx_cycle->conf_ctx,
                                               ngx_core_module);

        if (ccf->master) {
            return NGX_PROCESS_MASTER;
        }
    }

    return ngx_process;
}
