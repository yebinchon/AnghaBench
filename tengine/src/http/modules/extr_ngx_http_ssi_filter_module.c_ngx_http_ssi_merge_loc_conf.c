
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int types; int types_keys; int value_len; int min_file_chunk; int last_modified; int ignore_recycled_buffers; int silent_errors; int enable; } ;
typedef TYPE_1__ ngx_http_ssi_loc_conf_t ;
typedef int ngx_conf_t ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 scalar_t__ NGX_OK ;
 int ngx_conf_merge_size_value (int ,int ,int) ;
 int ngx_conf_merge_value (int ,int ,int ) ;
 int ngx_http_html_default_types ;
 scalar_t__ ngx_http_merge_types (int *,int *,int *,int *,int *,int ) ;

__attribute__((used)) static char *
ngx_http_ssi_merge_loc_conf(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_http_ssi_loc_conf_t *prev = parent;
    ngx_http_ssi_loc_conf_t *conf = child;

    ngx_conf_merge_value(conf->enable, prev->enable, 0);
    ngx_conf_merge_value(conf->silent_errors, prev->silent_errors, 0);
    ngx_conf_merge_value(conf->ignore_recycled_buffers,
                         prev->ignore_recycled_buffers, 0);
    ngx_conf_merge_value(conf->last_modified, prev->last_modified, 0);

    ngx_conf_merge_size_value(conf->min_file_chunk, prev->min_file_chunk, 1024);
    ngx_conf_merge_size_value(conf->value_len, prev->value_len, 255);

    if (ngx_http_merge_types(cf, &conf->types_keys, &conf->types,
                             &prev->types_keys, &prev->types,
                             ngx_http_html_default_types)
        != NGX_OK)
    {
        return NGX_CONF_ERROR;
    }

    return NGX_CONF_OK;
}
