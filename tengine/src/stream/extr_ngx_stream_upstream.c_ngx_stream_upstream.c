
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_18__ ;
typedef struct TYPE_19__ TYPE_10__ ;


struct TYPE_24__ {int no_resolve; int no_port; int host; } ;
typedef TYPE_4__ ngx_url_t ;
typedef size_t ngx_uint_t ;
struct TYPE_25__ {TYPE_18__* servers; struct TYPE_25__** srv_conf; } ;
typedef TYPE_5__ ngx_stream_upstream_srv_conf_t ;
typedef int ngx_stream_upstream_server_t ;
struct TYPE_26__ {void* (* create_srv_conf ) (TYPE_8__*) ;} ;
typedef TYPE_6__ ngx_stream_module_t ;
struct TYPE_27__ {TYPE_5__** srv_conf; int main_conf; } ;
typedef TYPE_7__ ngx_stream_conf_ctx_t ;
typedef int ngx_str_t ;
struct TYPE_28__ {int cmd_type; TYPE_7__* ctx; int pool; TYPE_3__* cycle; TYPE_1__* args; } ;
typedef TYPE_8__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_23__ {TYPE_2__** modules; } ;
struct TYPE_22__ {scalar_t__ type; size_t ctx_index; TYPE_6__* ctx; } ;
struct TYPE_21__ {int * elts; } ;
struct TYPE_20__ {scalar_t__ nelts; } ;
struct TYPE_19__ {size_t ctx_index; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_LOG_EMERG ;
 scalar_t__ NGX_STREAM_MODULE ;
 int NGX_STREAM_UPSTREAM_BACKUP ;
 int NGX_STREAM_UPSTREAM_CREATE ;
 int NGX_STREAM_UPSTREAM_DOWN ;
 int NGX_STREAM_UPSTREAM_FAIL_TIMEOUT ;
 int NGX_STREAM_UPSTREAM_MAX_CONNS ;
 int NGX_STREAM_UPSTREAM_MAX_FAILS ;
 int NGX_STREAM_UPSTREAM_WEIGHT ;
 int NGX_STREAM_UPS_CONF ;
 TYPE_18__* ngx_array_create (int ,int,int) ;
 int ngx_conf_log_error (int ,TYPE_8__*,int ,char*) ;
 char* ngx_conf_parse (TYPE_8__*,int *) ;
 int ngx_memzero (TYPE_4__*,int) ;
 void* ngx_pcalloc (int ,int) ;
 int ngx_stream_max_module ;
 TYPE_5__* ngx_stream_upstream_add (TYPE_8__*,TYPE_4__*,int) ;
 TYPE_10__ ngx_stream_upstream_module ;
 void* stub1 (TYPE_8__*) ;

__attribute__((used)) static char *
ngx_stream_upstream(ngx_conf_t *cf, ngx_command_t *cmd, void *dummy)
{
    char *rv;
    void *mconf;
    ngx_str_t *value;
    ngx_url_t u;
    ngx_uint_t m;
    ngx_conf_t pcf;
    ngx_stream_module_t *module;
    ngx_stream_conf_ctx_t *ctx, *stream_ctx;
    ngx_stream_upstream_srv_conf_t *uscf;

    ngx_memzero(&u, sizeof(ngx_url_t));

    value = cf->args->elts;
    u.host = value[1];
    u.no_resolve = 1;
    u.no_port = 1;

    uscf = ngx_stream_upstream_add(cf, &u, NGX_STREAM_UPSTREAM_CREATE
                                           |NGX_STREAM_UPSTREAM_WEIGHT
                                           |NGX_STREAM_UPSTREAM_MAX_CONNS
                                           |NGX_STREAM_UPSTREAM_MAX_FAILS
                                           |NGX_STREAM_UPSTREAM_FAIL_TIMEOUT
                                           |NGX_STREAM_UPSTREAM_DOWN
                                           |NGX_STREAM_UPSTREAM_BACKUP);
    if (uscf == ((void*)0)) {
        return NGX_CONF_ERROR;
    }


    ctx = ngx_pcalloc(cf->pool, sizeof(ngx_stream_conf_ctx_t));
    if (ctx == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    stream_ctx = cf->ctx;
    ctx->main_conf = stream_ctx->main_conf;



    ctx->srv_conf = ngx_pcalloc(cf->pool,
                                sizeof(void *) * ngx_stream_max_module);
    if (ctx->srv_conf == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    ctx->srv_conf[ngx_stream_upstream_module.ctx_index] = uscf;

    uscf->srv_conf = ctx->srv_conf;

    for (m = 0; cf->cycle->modules[m]; m++) {
        if (cf->cycle->modules[m]->type != NGX_STREAM_MODULE) {
            continue;
        }

        module = cf->cycle->modules[m]->ctx;

        if (module->create_srv_conf) {
            mconf = module->create_srv_conf(cf);
            if (mconf == ((void*)0)) {
                return NGX_CONF_ERROR;
            }

            ctx->srv_conf[cf->cycle->modules[m]->ctx_index] = mconf;
        }
    }

    uscf->servers = ngx_array_create(cf->pool, 4,
                                     sizeof(ngx_stream_upstream_server_t));
    if (uscf->servers == ((void*)0)) {
        return NGX_CONF_ERROR;
    }




    pcf = *cf;
    cf->ctx = ctx;
    cf->cmd_type = NGX_STREAM_UPS_CONF;

    rv = ngx_conf_parse(cf, ((void*)0));

    *cf = pcf;

    if (rv != NGX_CONF_OK) {
        return rv;
    }

    if (uscf->servers->nelts == 0) {
        ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                           "no servers are inside upstream");
        return NGX_CONF_ERROR;
    }

    return rv;
}
