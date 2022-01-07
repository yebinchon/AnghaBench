
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_http_fake_loc_conf_t ;
typedef int ngx_conf_t ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_LOG_ALERT ;
 int ngx_conf_log_error (int ,int *,int ,char*) ;
 int * ngx_http_conf_get_module_loc_conf (int *,int ) ;
 int ngx_http_fake_module ;

__attribute__((used)) static char *ngx_http_fake_merge_loc_conf(ngx_conf_t *cf, void *prev, void *conf)
{
    ngx_http_fake_loc_conf_t *flcf;

    flcf = ngx_http_conf_get_module_loc_conf(cf, ngx_http_fake_module);
    if (flcf == ((void*)0)) {
        ngx_conf_log_error(NGX_LOG_ALERT, cf, 0,
                           "get module loc conf failed in merge loc conf");
        return NGX_CONF_ERROR;
    }

    return NGX_CONF_OK;
}
