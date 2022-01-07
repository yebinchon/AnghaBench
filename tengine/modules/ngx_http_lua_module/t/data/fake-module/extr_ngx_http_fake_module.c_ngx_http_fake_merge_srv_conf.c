
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_http_fake_srv_conf_t ;
typedef int ngx_conf_t ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_LOG_ALERT ;
 int ngx_conf_log_error (int ,int *,int ,char*) ;
 int * ngx_http_conf_get_module_srv_conf (int *,int ) ;
 int ngx_http_fake_module ;

__attribute__((used)) static char *ngx_http_fake_merge_srv_conf(ngx_conf_t *cf, void *prev, void *conf)
{
    ngx_http_fake_srv_conf_t *fscf;

    fscf = ngx_http_conf_get_module_srv_conf(cf, ngx_http_fake_module);
    if (fscf == ((void*)0)) {
        ngx_conf_log_error(NGX_LOG_ALERT, cf, 0,
                           "get module srv conf failed in merge srv conf");
        return NGX_CONF_ERROR;
    }

    return NGX_CONF_OK;
}
