
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int types; int types_keys; int unique; int max_files; int ignore_file_error; int delimiter; int enable; } ;
typedef TYPE_1__ ngx_http_concat_loc_conf_t ;
typedef int ngx_conf_t ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 scalar_t__ NGX_OK ;
 int ngx_conf_merge_str_value (int ,int ,char*) ;
 int ngx_conf_merge_uint_value (int ,int ,int) ;
 int ngx_conf_merge_value (int ,int ,int) ;
 int ngx_http_concat_default_types ;
 scalar_t__ ngx_http_merge_types (int *,int *,int *,int *,int *,int ) ;

__attribute__((used)) static char *
ngx_http_concat_merge_loc_conf(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_http_concat_loc_conf_t *prev = parent;
    ngx_http_concat_loc_conf_t *conf = child;

    ngx_conf_merge_value(conf->enable, prev->enable, 0);
    ngx_conf_merge_str_value(conf->delimiter, prev->delimiter, "");
    ngx_conf_merge_value(conf->ignore_file_error, prev->ignore_file_error, 0);
    ngx_conf_merge_uint_value(conf->max_files, prev->max_files, 10);
    ngx_conf_merge_value(conf->unique, prev->unique, 1);

    if (ngx_http_merge_types(cf, &conf->types_keys, &conf->types,
                             &prev->types_keys, &prev->types,
                             ngx_http_concat_default_types)
        != NGX_OK)
    {
        return NGX_CONF_ERROR;
    }

    return NGX_CONF_OK;
}
