
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_8__ ;
typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_19__ ;
typedef struct TYPE_21__ TYPE_16__ ;


typedef size_t ngx_uint_t ;
struct TYPE_26__ {char* (* init_main_conf ) (TYPE_8__*,TYPE_6__*) ;char* (* merge_srv_conf ) (TYPE_8__*,int *,int *) ;int * (* create_srv_conf ) (TYPE_8__*) ;TYPE_6__* (* create_main_conf ) (TYPE_8__*) ;} ;
typedef TYPE_4__ ngx_mail_module_t ;
typedef int ngx_mail_listen_t ;
struct TYPE_27__ {TYPE_7__* ctx; } ;
typedef TYPE_5__ ngx_mail_core_srv_conf_t ;
struct TYPE_25__ {size_t nelts; int * elts; } ;
struct TYPE_24__ {size_t nelts; TYPE_5__** elts; } ;
struct TYPE_28__ {TYPE_3__ listen; TYPE_2__ servers; } ;
typedef TYPE_6__ ngx_mail_core_main_conf_t ;
typedef int ngx_mail_conf_port_t ;
struct TYPE_29__ {int ** srv_conf; TYPE_6__** main_conf; } ;
typedef TYPE_7__ ngx_mail_conf_ctx_t ;
struct TYPE_30__ {int temp_pool; TYPE_7__* ctx; TYPE_19__* cycle; int cmd_type; scalar_t__ module_type; int pool; } ;
typedef TYPE_8__ ngx_conf_t ;
typedef int ngx_command_t ;
typedef int ngx_array_t ;
struct TYPE_23__ {scalar_t__ type; size_t ctx_index; TYPE_4__* ctx; } ;
struct TYPE_22__ {TYPE_1__** modules; } ;
struct TYPE_21__ {size_t ctx_index; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_MAIL_MAIN_CONF ;
 scalar_t__ NGX_MAIL_MODULE ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_array_init (int *,int ,int,int) ;
 char* ngx_conf_parse (TYPE_8__*,int *) ;
 int ngx_count_modules (TYPE_19__*,scalar_t__) ;
 scalar_t__ ngx_mail_add_ports (TYPE_8__*,int *,int *) ;
 TYPE_16__ ngx_mail_core_module ;
 int ngx_mail_max_module ;
 char* ngx_mail_optimize_servers (TYPE_8__*,int *) ;
 void* ngx_pcalloc (int ,int) ;
 TYPE_6__* stub1 (TYPE_8__*) ;
 int * stub2 (TYPE_8__*) ;
 char* stub3 (TYPE_8__*,TYPE_6__*) ;
 char* stub4 (TYPE_8__*,int *,int *) ;

__attribute__((used)) static char *
ngx_mail_block(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    char *rv;
    ngx_uint_t i, m, mi, s;
    ngx_conf_t pcf;
    ngx_array_t ports;
    ngx_mail_listen_t *listen;
    ngx_mail_module_t *module;
    ngx_mail_conf_ctx_t *ctx;
    ngx_mail_core_srv_conf_t **cscfp;
    ngx_mail_core_main_conf_t *cmcf;

    if (*(ngx_mail_conf_ctx_t **) conf) {
        return "is duplicate";
    }



    ctx = ngx_pcalloc(cf->pool, sizeof(ngx_mail_conf_ctx_t));
    if (ctx == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    *(ngx_mail_conf_ctx_t **) conf = ctx;



    ngx_mail_max_module = ngx_count_modules(cf->cycle, NGX_MAIL_MODULE);




    ctx->main_conf = ngx_pcalloc(cf->pool,
                                 sizeof(void *) * ngx_mail_max_module);
    if (ctx->main_conf == ((void*)0)) {
        return NGX_CONF_ERROR;
    }







    ctx->srv_conf = ngx_pcalloc(cf->pool, sizeof(void *) * ngx_mail_max_module);
    if (ctx->srv_conf == ((void*)0)) {
        return NGX_CONF_ERROR;
    }






    for (m = 0; cf->cycle->modules[m]; m++) {
        if (cf->cycle->modules[m]->type != NGX_MAIL_MODULE) {
            continue;
        }

        module = cf->cycle->modules[m]->ctx;
        mi = cf->cycle->modules[m]->ctx_index;

        if (module->create_main_conf) {
            ctx->main_conf[mi] = module->create_main_conf(cf);
            if (ctx->main_conf[mi] == ((void*)0)) {
                return NGX_CONF_ERROR;
            }
        }

        if (module->create_srv_conf) {
            ctx->srv_conf[mi] = module->create_srv_conf(cf);
            if (ctx->srv_conf[mi] == ((void*)0)) {
                return NGX_CONF_ERROR;
            }
        }
    }




    pcf = *cf;
    cf->ctx = ctx;

    cf->module_type = NGX_MAIL_MODULE;
    cf->cmd_type = NGX_MAIL_MAIN_CONF;
    rv = ngx_conf_parse(cf, ((void*)0));

    if (rv != NGX_CONF_OK) {
        *cf = pcf;
        return rv;
    }




    cmcf = ctx->main_conf[ngx_mail_core_module.ctx_index];
    cscfp = cmcf->servers.elts;

    for (m = 0; cf->cycle->modules[m]; m++) {
        if (cf->cycle->modules[m]->type != NGX_MAIL_MODULE) {
            continue;
        }

        module = cf->cycle->modules[m]->ctx;
        mi = cf->cycle->modules[m]->ctx_index;



        cf->ctx = ctx;

        if (module->init_main_conf) {
            rv = module->init_main_conf(cf, ctx->main_conf[mi]);
            if (rv != NGX_CONF_OK) {
                *cf = pcf;
                return rv;
            }
        }

        for (s = 0; s < cmcf->servers.nelts; s++) {



            cf->ctx = cscfp[s]->ctx;

            if (module->merge_srv_conf) {
                rv = module->merge_srv_conf(cf,
                                            ctx->srv_conf[mi],
                                            cscfp[s]->ctx->srv_conf[mi]);
                if (rv != NGX_CONF_OK) {
                    *cf = pcf;
                    return rv;
                }
            }
        }
    }

    *cf = pcf;


    if (ngx_array_init(&ports, cf->temp_pool, 4, sizeof(ngx_mail_conf_port_t))
        != NGX_OK)
    {
        return NGX_CONF_ERROR;
    }

    listen = cmcf->listen.elts;

    for (i = 0; i < cmcf->listen.nelts; i++) {
        if (ngx_mail_add_ports(cf, &ports, &listen[i]) != NGX_OK) {
            return NGX_CONF_ERROR;
        }
    }

    return ngx_mail_optimize_servers(cf, &ports);
}
