
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ init_upstream; } ;
struct TYPE_5__ {int flags; TYPE_1__ peer; } ;
typedef TYPE_2__ ngx_http_upstream_srv_conf_t ;
typedef int ngx_conf_t ;
typedef int ngx_command_t ;


 char* NGX_CONF_OK ;
 int NGX_HTTP_UPSTREAM_BACKUP ;
 int NGX_HTTP_UPSTREAM_CREATE ;
 int NGX_HTTP_UPSTREAM_DOWN ;
 int NGX_HTTP_UPSTREAM_FAIL_TIMEOUT ;
 int NGX_HTTP_UPSTREAM_MAX_CONNS ;
 int NGX_HTTP_UPSTREAM_MAX_FAILS ;
 int NGX_HTTP_UPSTREAM_WEIGHT ;
 int NGX_LOG_WARN ;
 int ngx_conf_log_error (int ,int *,int ,char*) ;
 TYPE_2__* ngx_http_conf_get_module_srv_conf (int *,int ) ;
 scalar_t__ ngx_http_upstream_init_vnswrr ;
 int ngx_http_upstream_module ;

__attribute__((used)) static char *
ngx_http_upstream_vnswrr(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_http_upstream_srv_conf_t *uscf;

    uscf = ngx_http_conf_get_module_srv_conf(cf, ngx_http_upstream_module);

    if (uscf->peer.init_upstream) {
        ngx_conf_log_error(NGX_LOG_WARN, cf, 0,
                           "load balancing method redefined");
    }

    uscf->peer.init_upstream = ngx_http_upstream_init_vnswrr;

    uscf->flags = NGX_HTTP_UPSTREAM_CREATE
                  |NGX_HTTP_UPSTREAM_WEIGHT
                  |NGX_HTTP_UPSTREAM_BACKUP
                  |NGX_HTTP_UPSTREAM_MAX_FAILS
                  |NGX_HTTP_UPSTREAM_FAIL_TIMEOUT



                  |NGX_HTTP_UPSTREAM_DOWN;

    return NGX_CONF_OK;
}
