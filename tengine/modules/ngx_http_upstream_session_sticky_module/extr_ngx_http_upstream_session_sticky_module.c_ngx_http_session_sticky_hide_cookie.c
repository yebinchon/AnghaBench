
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ data; scalar_t__ len; } ;
struct TYPE_15__ {int uri_part; int no_resolve; TYPE_2__ url; } ;
typedef TYPE_3__ ngx_url_t ;
struct TYPE_16__ {scalar_t__ data; scalar_t__ len; } ;
typedef TYPE_4__ ngx_str_t ;
struct TYPE_17__ {int * uscf; } ;
typedef TYPE_5__ ngx_http_ss_loc_conf_t ;
struct TYPE_18__ {TYPE_1__* args; } ;
typedef TYPE_6__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_13__ {scalar_t__ elts; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_LOG_EMERG ;
 int ngx_conf_deprecated (TYPE_6__*,int *,int *) ;
 int ngx_conf_deprecated_session_sticky_header ;
 int ngx_conf_log_error (int ,TYPE_6__*,int ,char*,...) ;
 int * ngx_http_upstream_add (TYPE_6__*,TYPE_3__*,int ) ;
 int ngx_memzero (TYPE_3__*,int) ;
 scalar_t__ ngx_strncmp (scalar_t__,char*,int) ;

__attribute__((used)) static char *
ngx_http_session_sticky_hide_cookie(ngx_conf_t *cf, ngx_command_t *cmd,
    void *conf)
{
    ngx_http_ss_loc_conf_t *slcf = conf;

    size_t add;
    ngx_str_t *value;
    ngx_url_t u;

    value = (ngx_str_t *) cf->args->elts;
    if (ngx_strncmp(value[0].data, "session_sticky_header", 21) == 0) {
        ngx_conf_deprecated(cf,
                            &ngx_conf_deprecated_session_sticky_header, ((void*)0));
    }

    if (ngx_strncmp(value[1].data, "upstream=", 9) == 0) {
        add = 9;
        ngx_memzero(&u, sizeof(ngx_url_t));

        u.url.len = value[1].len - add;
        u.url.data = value[1].data + add;
        u.uri_part = 1;
        u.no_resolve = 1;

        slcf->uscf = ngx_http_upstream_add(cf, &u, 0);
        if (slcf->uscf == ((void*)0)) {
            ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                               "invalid upstream name");
            return NGX_CONF_ERROR;
        }
        return NGX_CONF_OK;
    }

    ngx_conf_log_error(NGX_LOG_EMERG, cf, 0, "invalid argument of \"%V\"",
                       &value[1]);
    return NGX_CONF_ERROR;
}
