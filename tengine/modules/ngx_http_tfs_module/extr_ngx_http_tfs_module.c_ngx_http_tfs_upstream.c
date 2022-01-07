
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {int no_resolve; int host; } ;
typedef TYPE_3__ ngx_url_t ;
typedef int ngx_str_t ;
struct TYPE_14__ {scalar_t__ len; } ;
struct TYPE_16__ {char* local_addr_text; int * rc_ctx; TYPE_2__ lock_file; scalar_t__ enable_rcs; int * ups_addr; } ;
typedef TYPE_4__ ngx_http_tfs_upstream_t ;
struct TYPE_17__ {void* handler_conf; int handler; TYPE_4__* ctx; TYPE_1__* args; } ;
typedef TYPE_5__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_13__ {int * elts; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_HTTP_TFS_UPSTREAM_CREATE ;
 int NGX_LOG_EMERG ;
 int ngx_conf_log_error (int ,TYPE_5__*,int ,char*) ;
 char* ngx_conf_parse (TYPE_5__*,int *) ;
 TYPE_4__* ngx_http_tfs_upstream_add (TYPE_5__*,TYPE_3__*,int ) ;
 int ngx_http_tfs_upstream_parse ;
 int ngx_memzero (TYPE_3__*,int) ;

__attribute__((used)) static char *
ngx_http_tfs_upstream(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    char *rv;
    ngx_url_t u;
    ngx_str_t *value;
    ngx_conf_t pcf;
    ngx_http_tfs_upstream_t *tu;

    ngx_memzero(&u, sizeof(ngx_url_t));

    value = cf->args->elts;
    u.host = value[1];
    u.no_resolve = 1;

    tu = ngx_http_tfs_upstream_add(cf, &u, NGX_HTTP_TFS_UPSTREAM_CREATE);
    if (tu == ((void*)0)) {
        return NGX_CONF_ERROR;
    }



    pcf = *cf;
    cf->ctx = tu;
    cf->handler = ngx_http_tfs_upstream_parse;
    cf->handler_conf = conf;

    rv = ngx_conf_parse(cf, ((void*)0));

    *cf = pcf;

    if (rv != NGX_CONF_OK) {
        return rv;
    }

    if (tu->ups_addr == ((void*)0)) {
        ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                           "no servers are inside tfs upstream");
        return NGX_CONF_ERROR;
    }

    if (tu->enable_rcs) {
        if (tu->local_addr_text[0] == '\0') {
            ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                               "type rcs_server must set rcs_interface "
                               "directives in tfs_upstream block");
            return NGX_CONF_ERROR;
        }

        if (tu->lock_file.len == 0) {
            ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                               "type rcs must set rcs_heartbeat directives"
                               " in tfs_upstream block");
            return NGX_CONF_ERROR;
        }

        if (tu->rc_ctx == ((void*)0)) {
            ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                               "type rcs must set "
                               "rcs_zone directives in tfs_upstream block");
            return NGX_CONF_ERROR;
        }
    }

    return rv;
}
