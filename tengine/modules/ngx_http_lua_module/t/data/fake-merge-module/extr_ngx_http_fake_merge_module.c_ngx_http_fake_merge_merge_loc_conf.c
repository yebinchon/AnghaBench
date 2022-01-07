
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int a; } ;
typedef TYPE_1__ ngx_http_fake_merge_main_conf_t ;
struct TYPE_5__ {int a; } ;
typedef TYPE_2__ ngx_http_fake_merge_loc_conf_t ;
typedef int ngx_conf_t ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_LOG_ALERT ;
 int ngx_conf_log_error (int ,int *,int ,char*) ;
 int ngx_conf_merge_value (int ,int ,int ) ;
 TYPE_1__* ngx_http_conf_get_module_main_conf (int *,int ) ;
 int ngx_http_fake_merge_module ;

__attribute__((used)) static char *
ngx_http_fake_merge_merge_loc_conf(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_http_fake_merge_loc_conf_t *conf = child;
    ngx_http_fake_merge_loc_conf_t *prev = parent;
    ngx_http_fake_merge_main_conf_t *fmcf;

    ngx_conf_merge_value(conf->a, prev->a, 0);

    fmcf = ngx_http_conf_get_module_main_conf(cf,
                                              ngx_http_fake_merge_module);
    if (fmcf == ((void*)0)) {
        ngx_conf_log_error(NGX_LOG_ALERT, cf, 0,
                           "get module main conf failed in merge loc conf");
        return NGX_CONF_ERROR;
    }


    fmcf->a = conf->a;

    return NGX_CONF_OK;
}
