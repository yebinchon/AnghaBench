
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ngx_str_t ;
struct TYPE_2__ {int format; } ;
typedef TYPE_1__ ngx_http_upstream_check_loc_conf_t ;
typedef int ngx_conf_t ;


 char* NGX_CONF_OK ;
 int ngx_conf_merge_ptr_value (int ,int ,int ) ;
 int ngx_http_get_check_status_format_conf (int *) ;
 int ngx_string (char*) ;

__attribute__((used)) static char *
ngx_http_upstream_check_merge_loc_conf(ngx_conf_t *cf, void *parent,
    void *child)
{
    ngx_str_t format = ngx_string("html");
    ngx_http_upstream_check_loc_conf_t *prev = parent;
    ngx_http_upstream_check_loc_conf_t *conf = child;

    ngx_conf_merge_ptr_value(conf->format, prev->format,
                             ngx_http_get_check_status_format_conf(&format));

    return NGX_CONF_OK;
}
