
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bufs; } ;
typedef TYPE_1__ ngx_http_copy_filter_conf_t ;
typedef int ngx_conf_t ;


 int ngx_conf_merge_bufs_value (int ,int ,int,int) ;

__attribute__((used)) static char *
ngx_http_copy_filter_merge_conf(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_http_copy_filter_conf_t *prev = parent;
    ngx_http_copy_filter_conf_t *conf = child;

    ngx_conf_merge_bufs_value(conf->bufs, prev->bufs, 2, 32768);

    return ((void*)0);
}
