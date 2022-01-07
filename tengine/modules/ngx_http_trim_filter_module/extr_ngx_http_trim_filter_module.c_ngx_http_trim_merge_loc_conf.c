
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * css; int * js; int * trim; int types; int types_keys; } ;
typedef TYPE_1__ ngx_http_trim_loc_conf_t ;
typedef int ngx_conf_t ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 scalar_t__ NGX_OK ;
 int ngx_http_html_default_types ;
 scalar_t__ ngx_http_merge_types (int *,int *,int *,int *,int *,int ) ;

__attribute__((used)) static char *
ngx_http_trim_merge_loc_conf(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_http_trim_loc_conf_t *prev = parent;
    ngx_http_trim_loc_conf_t *conf = child;

    if (ngx_http_merge_types(cf, &conf->types_keys, &conf->types,
                             &prev->types_keys, &prev->types,
                             ngx_http_html_default_types)
        != NGX_OK)
    {
        return NGX_CONF_ERROR;
    }

    if (conf->trim == ((void*)0)) {
        conf->trim = prev->trim;
    }

    if (conf->js == ((void*)0)) {
        conf->js = prev->js;
    }

    if (conf->css == ((void*)0)) {
        conf->css = prev->css;
    }

    return NGX_CONF_OK;
}
