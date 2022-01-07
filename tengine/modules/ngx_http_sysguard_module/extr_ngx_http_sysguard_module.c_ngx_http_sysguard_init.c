
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ngx_int_t ;
typedef int ngx_http_handler_pt ;
struct TYPE_5__ {TYPE_1__* phases; } ;
typedef TYPE_2__ ngx_http_core_main_conf_t ;
typedef int ngx_conf_t ;
struct TYPE_4__ {int handlers; } ;


 int NGX_ERROR ;
 size_t NGX_HTTP_LOG_PHASE ;
 size_t NGX_HTTP_PREACCESS_PHASE ;
 int NGX_OK ;
 int * ngx_array_push (int *) ;
 TYPE_2__* ngx_http_conf_get_module_main_conf (int *,int ) ;
 int ngx_http_core_module ;
 int ngx_http_sysguard_handler ;
 int ngx_http_sysguard_log_handler ;

__attribute__((used)) static ngx_int_t
ngx_http_sysguard_init(ngx_conf_t *cf)
{
    ngx_http_handler_pt *h;
    ngx_http_core_main_conf_t *cmcf;

    cmcf = ngx_http_conf_get_module_main_conf(cf, ngx_http_core_module);

    h = ngx_array_push(&cmcf->phases[NGX_HTTP_PREACCESS_PHASE].handlers);
    if (h == ((void*)0)) {
        return NGX_ERROR;
    }

    *h = ngx_http_sysguard_handler;

    h = ngx_array_push(&cmcf->phases[NGX_HTTP_LOG_PHASE].handlers);
    if (h == ((void*)0)) {
        return NGX_ERROR;
    }

    *h = ngx_http_sysguard_log_handler;

    return NGX_OK;
}
