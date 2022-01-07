
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int respawn; int count; int delay_start; } ;
typedef TYPE_1__ ngx_proc_conf_t ;
typedef int ngx_conf_t ;


 char* NGX_CONF_OK ;
 int ngx_conf_merge_msec_value (int ,int ,int) ;
 int ngx_conf_merge_uint_value (int ,int ,int) ;
 int ngx_conf_merge_value (int ,int ,int) ;

__attribute__((used)) static char *
ngx_proc_merge_conf(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_proc_conf_t *prev = parent;
    ngx_proc_conf_t *conf = child;

    ngx_conf_merge_msec_value(conf->delay_start, prev->delay_start, 300);
    ngx_conf_merge_uint_value(conf->count, prev->count, 1);
    ngx_conf_merge_value(conf->respawn, prev->respawn, 1);

    return NGX_CONF_OK;
}
