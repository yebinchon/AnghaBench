
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_5__ {scalar_t__ data; int get_handler; } ;
typedef TYPE_1__ ngx_http_variable_t ;
struct TYPE_6__ {scalar_t__ index; } ;
typedef TYPE_2__ ngx_http_reqstat_conf_t ;
typedef int ngx_conf_t ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 TYPE_1__* ngx_http_add_variable (int *,int *,int ) ;
 TYPE_2__* ngx_http_conf_get_module_main_conf (int *,int ) ;
 scalar_t__ ngx_http_get_variable_index (int *,int *) ;
 int ngx_http_reqstat_module ;
 int ngx_http_reqstat_variable_enable ;
 int ngx_string (char*) ;

__attribute__((used)) static ngx_int_t
ngx_http_reqstat_add_variable(ngx_conf_t *cf)
{
    ngx_str_t name = ngx_string("reqstat_enable");
    ngx_http_variable_t *var;
    ngx_http_reqstat_conf_t *rmcf;

    rmcf = ngx_http_conf_get_module_main_conf(cf, ngx_http_reqstat_module);

    var = ngx_http_add_variable(cf, &name, 0);
    if (var == ((void*)0)) {
        return NGX_ERROR;
    }

    var->get_handler = ngx_http_reqstat_variable_enable;
    var->data = 0;

    rmcf->index = ngx_http_get_variable_index(cf, &name);

    if (rmcf->index == NGX_ERROR) {
        return NGX_ERROR;
    }

    return NGX_OK;
}
