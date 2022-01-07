
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ init_upstream; } ;
struct TYPE_5__ {int flags; TYPE_1__ peer; } ;
typedef TYPE_2__ ngx_stream_upstream_srv_conf_t ;
typedef int ngx_conf_t ;
typedef int ngx_command_t ;


 char* NGX_CONF_OK ;
 int NGX_LOG_WARN ;
 int NGX_STREAM_UPSTREAM_BACKUP ;
 int NGX_STREAM_UPSTREAM_CREATE ;
 int NGX_STREAM_UPSTREAM_DOWN ;
 int NGX_STREAM_UPSTREAM_FAIL_TIMEOUT ;
 int NGX_STREAM_UPSTREAM_MAX_CONNS ;
 int NGX_STREAM_UPSTREAM_MAX_FAILS ;
 int NGX_STREAM_UPSTREAM_WEIGHT ;
 int ngx_conf_log_error (int ,int *,int ,char*) ;
 TYPE_2__* ngx_stream_conf_get_module_srv_conf (int *,int ) ;
 scalar_t__ ngx_stream_upstream_init_least_conn ;
 int ngx_stream_upstream_module ;

__attribute__((used)) static char *
ngx_stream_upstream_least_conn(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_stream_upstream_srv_conf_t *uscf;

    uscf = ngx_stream_conf_get_module_srv_conf(cf, ngx_stream_upstream_module);

    if (uscf->peer.init_upstream) {
        ngx_conf_log_error(NGX_LOG_WARN, cf, 0,
                           "load balancing method redefined");
    }

    uscf->peer.init_upstream = ngx_stream_upstream_init_least_conn;

    uscf->flags = NGX_STREAM_UPSTREAM_CREATE
                  |NGX_STREAM_UPSTREAM_WEIGHT
                  |NGX_STREAM_UPSTREAM_MAX_CONNS
                  |NGX_STREAM_UPSTREAM_MAX_FAILS
                  |NGX_STREAM_UPSTREAM_FAIL_TIMEOUT
                  |NGX_STREAM_UPSTREAM_DOWN
                  |NGX_STREAM_UPSTREAM_BACKUP;

    return NGX_CONF_OK;
}
