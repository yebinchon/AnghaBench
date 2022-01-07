
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int footer_last; int header_first; int footer; int header; int end; int begin; } ;
typedef TYPE_1__ ngx_http_slice_loc_conf_t ;
typedef int ngx_conf_t ;


 char* NGX_CONF_OK ;
 int ngx_conf_merge_str_value (int ,int ,char*) ;
 int ngx_conf_merge_value (int ,int ,int) ;

__attribute__((used)) static char *
ngx_http_slice_merge_loc_conf(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_http_slice_loc_conf_t *prev = parent;
    ngx_http_slice_loc_conf_t *conf = child;

    ngx_conf_merge_str_value(conf->begin, prev->begin, "begin");
    ngx_conf_merge_str_value(conf->end, prev->end, "end");
    ngx_conf_merge_str_value(conf->header, prev->header, "");
    ngx_conf_merge_str_value(conf->footer, prev->footer, "");
    ngx_conf_merge_value(conf->header_first, prev->header_first, 1);
    ngx_conf_merge_value(conf->footer_last, prev->footer_last, 1);

    return NGX_CONF_OK;
}
