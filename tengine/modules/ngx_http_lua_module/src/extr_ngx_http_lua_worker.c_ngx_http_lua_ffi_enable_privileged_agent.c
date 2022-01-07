
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int privileged_agent; } ;
typedef TYPE_1__ ngx_core_conf_t ;
struct TYPE_4__ {int conf_ctx; } ;


 int NGX_ERROR ;
 int NGX_OK ;
 int ngx_core_module ;
 TYPE_2__* ngx_cycle ;
 scalar_t__ ngx_get_conf (int ,int ) ;

int
ngx_http_lua_ffi_enable_privileged_agent(char **err)
{
    *err = "missing privileged agent process patch in the nginx core";
    return NGX_ERROR;

}
