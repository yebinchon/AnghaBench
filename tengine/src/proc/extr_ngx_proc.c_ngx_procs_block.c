
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
typedef struct TYPE_20__ TYPE_17__ ;
typedef struct TYPE_19__ TYPE_16__ ;


typedef size_t ngx_uint_t ;
struct TYPE_23__ {int data; } ;
struct TYPE_24__ {char* (* init_main_conf ) (TYPE_8__*,TYPE_5__*) ;char* (* merge_proc_conf ) (TYPE_8__*,int *,int *) ;TYPE_3__ name; int * (* create_proc_conf ) (TYPE_8__*) ;TYPE_5__* (* create_main_conf ) (TYPE_8__*) ;} ;
typedef TYPE_4__ ngx_proc_module_t ;
struct TYPE_21__ {size_t nelts; TYPE_6__** elts; } ;
struct TYPE_25__ {TYPE_1__ processes; } ;
typedef TYPE_5__ ngx_proc_main_conf_t ;
struct TYPE_22__ {char* data; } ;
struct TYPE_26__ {TYPE_7__* ctx; TYPE_2__ name; } ;
typedef TYPE_6__ ngx_proc_conf_t ;
struct TYPE_27__ {int ** proc_conf; TYPE_5__** main_conf; } ;
typedef TYPE_7__ ngx_proc_conf_ctx_t ;
struct TYPE_28__ {TYPE_7__* ctx; int cmd_type; scalar_t__ module_type; int pool; } ;
typedef TYPE_8__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_20__ {scalar_t__ type; size_t ctx_index; TYPE_4__* ctx; } ;
struct TYPE_19__ {size_t ctx_index; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_PROC_MAIN_CONF ;
 scalar_t__ NGX_PROC_MODULE ;
 char* ngx_conf_parse (TYPE_8__*,int *) ;
 TYPE_17__** ngx_modules ;
 void* ngx_pcalloc (int ,int) ;
 TYPE_16__ ngx_proc_core_module ;
 int ngx_procs_max_module ;
 scalar_t__ ngx_strcmp (int ,char*) ;
 TYPE_5__* stub1 (TYPE_8__*) ;
 int * stub2 (TYPE_8__*) ;
 char* stub3 (TYPE_8__*,TYPE_5__*) ;
 char* stub4 (TYPE_8__*,int *,int *) ;

__attribute__((used)) static char *
ngx_procs_block(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    char *rv;
    ngx_uint_t i, mi, p;
    ngx_conf_t pcf;
    ngx_proc_conf_t **cpcfp;
    ngx_proc_module_t *module;
    ngx_proc_conf_ctx_t *ctx;
    ngx_proc_main_conf_t *cmcf;


    ctx = ngx_pcalloc(cf->pool, sizeof(ngx_proc_conf_ctx_t));
    if (ctx == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    *(ngx_proc_conf_ctx_t **) conf = ctx;

    ngx_procs_max_module = 0;

    for (i = 0; ngx_modules[i]; i++) {
        if (ngx_modules[i]->type != NGX_PROC_MODULE) {
            continue;
        }

        ngx_modules[i]->ctx_index = ngx_procs_max_module++;
    }

    ctx->main_conf = ngx_pcalloc(cf->pool,
                                 ngx_procs_max_module * sizeof(void *));
    if (ctx->main_conf == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    ctx->proc_conf = ngx_pcalloc(cf->pool,
                                 sizeof(void *) * ngx_procs_max_module);
    if (ctx->proc_conf == ((void*)0)) {
        return NGX_CONF_ERROR;
    }



    for (i = 0; ngx_modules[i]; i++) {
        if (ngx_modules[i]->type != NGX_PROC_MODULE) {
            continue;
        }

        module = ngx_modules[i]->ctx;
        mi = ngx_modules[i]->ctx_index;

        if (module->create_main_conf) {

            ctx->main_conf[mi] = module->create_main_conf(cf);

            if (ctx->main_conf[mi] == ((void*)0)) {
                return NGX_CONF_ERROR;
            }
        }

        if (module->create_proc_conf) {
            ctx->proc_conf[mi] = module->create_proc_conf(cf);

            if (ctx->proc_conf[mi] == ((void*)0)) {
                return NGX_CONF_ERROR;
            }
        }
    }


    pcf = *cf;
    cf->ctx = ctx;


    cf->module_type = NGX_PROC_MODULE;
    cf->cmd_type = NGX_PROC_MAIN_CONF;

    rv = ngx_conf_parse(cf, ((void*)0));

    if (rv != NGX_CONF_OK) {
        *cf = pcf;
        return rv;
    }

    cmcf = ctx->main_conf[ngx_proc_core_module.ctx_index];
    cpcfp = cmcf->processes.elts;

    for (i = 0; ngx_modules[i]; i++) {

        if (ngx_modules[i]->type != NGX_PROC_MODULE) {
            continue;
        }

        module = ngx_modules[i]->ctx;
        mi = ngx_modules[i]->ctx_index;

        cf->ctx = ctx;

        if (module->init_main_conf) {
            rv = module->init_main_conf(cf,ctx->main_conf[mi]);
            if (rv != NGX_CONF_OK) {
                *cf = pcf;
                return rv;
            }
        }

        for (p = 0; p < cmcf->processes.nelts; p++) {

            cf->ctx = cpcfp[p]->ctx;

            if (ngx_strcmp(module->name.data, cpcfp[p]->name.data) == 0
                || ngx_strcmp(module->name.data, "proc_core") == 0)
            {
                if (module->merge_proc_conf) {
                    rv = module->merge_proc_conf(cf, ctx->proc_conf[mi],
                                                 cpcfp[p]->ctx->proc_conf[mi]);

                    if (rv != NGX_CONF_OK) {
                        *cf = pcf;
                        return rv;
                    }


                    ctx->proc_conf[mi] = cpcfp[p]->ctx->proc_conf[mi];
                }
            }
        }
    }

    *cf = pcf;

    return NGX_CONF_OK;
}
