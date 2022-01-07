
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * elts; } ;
struct TYPE_4__ {int status_code; int log_level; TYPE_1__ limits; } ;
typedef TYPE_2__ ngx_http_limit_conn_conf_t ;
typedef int ngx_conf_t ;


 char* NGX_CONF_OK ;
 int NGX_HTTP_SERVICE_UNAVAILABLE ;
 int NGX_LOG_ERR ;
 int ngx_conf_merge_uint_value (int ,int ,int ) ;

__attribute__((used)) static char *
ngx_http_limit_conn_merge_conf(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_http_limit_conn_conf_t *prev = parent;
    ngx_http_limit_conn_conf_t *conf = child;

    if (conf->limits.elts == ((void*)0)) {
        conf->limits = prev->limits;
    }

    ngx_conf_merge_uint_value(conf->log_level, prev->log_level, NGX_LOG_ERR);
    ngx_conf_merge_uint_value(conf->status_code, prev->status_code,
                              NGX_HTTP_SERVICE_UNAVAILABLE);

    return NGX_CONF_OK;
}
