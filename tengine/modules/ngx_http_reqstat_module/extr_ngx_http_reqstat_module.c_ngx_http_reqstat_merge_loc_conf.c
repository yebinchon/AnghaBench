
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int user_defined_str; int user_select; int display; int monitor; int bypass; int lazy; } ;
typedef TYPE_1__ ngx_http_reqstat_conf_t ;
typedef int ngx_conf_t ;


 char* NGX_CONF_OK ;
 int ngx_conf_merge_ptr_value (int ,int ,int *) ;
 int ngx_conf_merge_value (int ,int ,int ) ;

__attribute__((used)) static char *
ngx_http_reqstat_merge_loc_conf(ngx_conf_t *cf, void *parent,
    void *child)
{
    ngx_http_reqstat_conf_t *conf = child;
    ngx_http_reqstat_conf_t *prev = parent;

    ngx_conf_merge_value(conf->lazy, prev->lazy, 0);
    ngx_conf_merge_ptr_value(conf->bypass, prev->bypass, ((void*)0));
    ngx_conf_merge_ptr_value(conf->monitor, prev->monitor, ((void*)0));
    ngx_conf_merge_ptr_value(conf->display, prev->display, ((void*)0));
    ngx_conf_merge_ptr_value(conf->user_select, prev->user_select, ((void*)0));
    ngx_conf_merge_ptr_value(conf->user_defined_str, prev->user_defined_str, ((void*)0));

    return NGX_CONF_OK;
}
