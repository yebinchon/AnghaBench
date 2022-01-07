
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {int no_resolve; void* url; } ;
typedef TYPE_4__ ngx_url_t ;
typedef void* ngx_str_t ;
struct TYPE_15__ {int * upstream; } ;
struct TYPE_18__ {TYPE_2__ upstream; void* method; void* service_version; void* service_name; } ;
typedef TYPE_5__ ngx_http_dubbo_loc_conf_t ;
struct TYPE_16__ {char* data; int len; } ;
struct TYPE_19__ {int auto_redirect; TYPE_3__ name; int handler; } ;
typedef TYPE_6__ ngx_http_core_loc_conf_t ;
struct TYPE_20__ {TYPE_1__* args; } ;
typedef TYPE_7__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_14__ {void** elts; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 TYPE_6__* ngx_http_conf_get_module_loc_conf (TYPE_7__*,int ) ;
 int ngx_http_core_module ;
 int ngx_http_dubbo_handler ;
 int * ngx_http_upstream_add (TYPE_7__*,TYPE_4__*,int ) ;
 int ngx_memzero (TYPE_4__*,int) ;

__attribute__((used)) static char *
ngx_http_dubbo_pass(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_http_dubbo_loc_conf_t *dlcf = conf;

    ngx_str_t *value;
    ngx_url_t u;
    ngx_http_core_loc_conf_t *clcf;

    if (dlcf->upstream.upstream) {
        return "is duplicate";
    }

    value = cf->args->elts;

    dlcf->service_name = value[1];
    dlcf->service_version = value[2];
    dlcf->method = value[3];

    ngx_memzero(&u, sizeof(ngx_url_t));

    u.url = value[4];
    u.no_resolve = 1;

    dlcf->upstream.upstream = ngx_http_upstream_add(cf, &u, 0);
    if (dlcf->upstream.upstream == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    clcf = ngx_http_conf_get_module_loc_conf(cf, ngx_http_core_module);

    clcf->handler = ngx_http_dubbo_handler;

    if (clcf->name.data[clcf->name.len - 1] == '/') {
        clcf->auto_redirect = 1;
    }

    return NGX_CONF_OK;
}
