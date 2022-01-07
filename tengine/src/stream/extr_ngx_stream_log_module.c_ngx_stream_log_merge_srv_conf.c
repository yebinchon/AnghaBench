
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ off; scalar_t__ logs; int * open_file_cache; int open_file_cache_min_uses; int open_file_cache_valid; } ;
typedef TYPE_1__ ngx_stream_log_srv_conf_t ;
typedef int ngx_conf_t ;


 char* NGX_CONF_OK ;
 int * NGX_CONF_UNSET_PTR ;

__attribute__((used)) static char *
ngx_stream_log_merge_srv_conf(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_stream_log_srv_conf_t *prev = parent;
    ngx_stream_log_srv_conf_t *conf = child;

    if (conf->open_file_cache == NGX_CONF_UNSET_PTR) {

        conf->open_file_cache = prev->open_file_cache;
        conf->open_file_cache_valid = prev->open_file_cache_valid;
        conf->open_file_cache_min_uses = prev->open_file_cache_min_uses;

        if (conf->open_file_cache == NGX_CONF_UNSET_PTR) {
            conf->open_file_cache = ((void*)0);
        }
    }

    if (conf->logs || conf->off) {
        return NGX_CONF_OK;
    }

    conf->logs = prev->logs;
    conf->off = prev->off;

    return NGX_CONF_OK;
}
