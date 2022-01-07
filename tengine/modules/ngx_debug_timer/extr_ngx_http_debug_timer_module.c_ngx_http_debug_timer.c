
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int handler; } ;
typedef TYPE_1__ ngx_http_core_loc_conf_t ;
typedef int ngx_conf_t ;
typedef int ngx_command_t ;


 char* NGX_CONF_OK ;
 TYPE_1__* ngx_http_conf_get_module_loc_conf (int *,int ) ;
 int ngx_http_core_module ;
 int ngx_http_debug_timer_handler ;

__attribute__((used)) static char *
ngx_http_debug_timer(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_http_core_loc_conf_t *clcf;

    clcf = ngx_http_conf_get_module_loc_conf(cf, ngx_http_core_module);
    clcf->handler = ngx_http_debug_timer_handler;

    return NGX_CONF_OK;
}
