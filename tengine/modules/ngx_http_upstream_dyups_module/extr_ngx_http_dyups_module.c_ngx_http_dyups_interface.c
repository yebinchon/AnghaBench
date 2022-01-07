
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int enable; } ;
typedef TYPE_1__ ngx_http_dyups_main_conf_t ;
struct TYPE_6__ {int handler; } ;
typedef TYPE_2__ ngx_http_core_loc_conf_t ;
typedef int ngx_conf_t ;
typedef int ngx_command_t ;


 char* NGX_CONF_OK ;
 TYPE_2__* ngx_http_conf_get_module_loc_conf (int *,int ) ;
 TYPE_1__* ngx_http_conf_get_module_main_conf (int *,int ) ;
 int ngx_http_core_module ;
 int ngx_http_dyups_interface_handler ;
 int ngx_http_dyups_module ;

__attribute__((used)) static char *
ngx_http_dyups_interface(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_http_core_loc_conf_t *clcf;
    ngx_http_dyups_main_conf_t *dmcf;

    dmcf = ngx_http_conf_get_module_main_conf(cf, ngx_http_dyups_module);
    clcf = ngx_http_conf_get_module_loc_conf(cf, ngx_http_core_module);
    clcf->handler = ngx_http_dyups_interface_handler;
    dmcf->enable = 1;

    return NGX_CONF_OK;
}
