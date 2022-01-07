
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int degrade; } ;
typedef TYPE_1__ ngx_http_degradation_loc_conf_t ;
typedef int ngx_conf_t ;


 char* NGX_CONF_OK ;
 int ngx_conf_merge_uint_value (int ,int ,int ) ;

__attribute__((used)) static char *
ngx_http_degradation_merge_loc_conf(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_http_degradation_loc_conf_t *prev = parent;
    ngx_http_degradation_loc_conf_t *conf = child;

    ngx_conf_merge_uint_value(conf->degrade, prev->degrade, 0);

    return NGX_CONF_OK;
}
