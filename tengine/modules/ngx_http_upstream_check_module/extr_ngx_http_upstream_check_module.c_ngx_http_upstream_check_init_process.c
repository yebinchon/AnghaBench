
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_int_t ;
typedef int ngx_http_upstream_check_main_conf_t ;
typedef int ngx_cycle_t ;


 int NGX_OK ;
 int * ngx_http_cycle_get_module_main_conf (int *,int ) ;
 int ngx_http_upstream_check_add_timers (int *) ;
 int ngx_http_upstream_check_module ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_check_init_process(ngx_cycle_t *cycle)
{
    ngx_http_upstream_check_main_conf_t *ucmcf;

    ucmcf = ngx_http_cycle_get_module_main_conf(cycle, ngx_http_upstream_check_module);
    if (ucmcf == ((void*)0)) {
        return NGX_OK;
    }

    return ngx_http_upstream_check_add_timers(cycle);
}
