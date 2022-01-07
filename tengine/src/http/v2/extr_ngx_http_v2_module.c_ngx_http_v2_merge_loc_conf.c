
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ push_preload; int * pushes; scalar_t__ push; int chunk_size; } ;
typedef TYPE_1__ ngx_http_v2_loc_conf_t ;
typedef int ngx_conf_t ;


 char* NGX_CONF_OK ;
 int ngx_conf_merge_size_value (int ,int ,int) ;
 int ngx_conf_merge_value (scalar_t__,scalar_t__,int) ;

__attribute__((used)) static char *
ngx_http_v2_merge_loc_conf(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_http_v2_loc_conf_t *prev = parent;
    ngx_http_v2_loc_conf_t *conf = child;

    ngx_conf_merge_size_value(conf->chunk_size, prev->chunk_size, 8 * 1024);

    ngx_conf_merge_value(conf->push, prev->push, 1);

    if (conf->push && conf->pushes == ((void*)0)) {
        conf->pushes = prev->pushes;
    }

    ngx_conf_merge_value(conf->push_preload, prev->push_preload, 0);

    return NGX_CONF_OK;
}
