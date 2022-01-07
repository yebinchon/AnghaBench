
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_45__ TYPE_8__ ;
typedef struct TYPE_44__ TYPE_7__ ;
typedef struct TYPE_43__ TYPE_6__ ;
typedef struct TYPE_42__ TYPE_5__ ;
typedef struct TYPE_41__ TYPE_4__ ;
typedef struct TYPE_40__ TYPE_3__ ;
typedef struct TYPE_39__ TYPE_34__ ;
typedef struct TYPE_38__ TYPE_32__ ;
typedef struct TYPE_37__ TYPE_2__ ;
typedef struct TYPE_36__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_41__ {scalar_t__ (* preconfiguration ) (TYPE_8__*) ;char* (* init_main_conf ) (TYPE_8__*,TYPE_6__*) ;scalar_t__ (* postconfiguration ) (TYPE_8__*) ;int * (* create_loc_conf ) (TYPE_8__*) ;int * (* create_srv_conf ) (TYPE_8__*) ;TYPE_6__* (* create_main_conf ) (TYPE_8__*) ;} ;
typedef TYPE_4__ ngx_http_module_t ;
struct TYPE_42__ {TYPE_1__* ctx; } ;
typedef TYPE_5__ ngx_http_core_srv_conf_t ;
struct TYPE_37__ {size_t nelts; TYPE_5__** elts; } ;
struct TYPE_43__ {int ports; TYPE_2__ servers; } ;
typedef TYPE_6__ ngx_http_core_main_conf_t ;
typedef int ngx_http_core_loc_conf_t ;
struct TYPE_44__ {TYPE_6__** main_conf; int ** loc_conf; int ** srv_conf; } ;
typedef TYPE_7__ ngx_http_conf_ctx_t ;
struct TYPE_45__ {TYPE_34__* cycle; int cmd_type; scalar_t__ module_type; TYPE_7__* ctx; int pool; } ;
typedef TYPE_8__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_40__ {scalar_t__ type; size_t ctx_index; TYPE_4__* ctx; } ;
struct TYPE_39__ {TYPE_3__** modules; } ;
struct TYPE_38__ {size_t ctx_index; } ;
struct TYPE_36__ {int ** loc_conf; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_HTTP_MAIN_CONF ;
 scalar_t__ NGX_HTTP_MODULE ;
 scalar_t__ NGX_OK ;
 char* ngx_conf_parse (TYPE_8__*,int *) ;
 int ngx_count_modules (TYPE_34__*,scalar_t__) ;
 TYPE_32__ ngx_http_core_module ;
 int ngx_http_dummy_input_body_filter ;
 scalar_t__ ngx_http_init_headers_in_hash (TYPE_8__*,TYPE_6__*) ;
 scalar_t__ ngx_http_init_locations (TYPE_8__*,TYPE_5__*,int *) ;
 scalar_t__ ngx_http_init_phase_handlers (TYPE_8__*,TYPE_6__*) ;
 scalar_t__ ngx_http_init_phases (TYPE_8__*,TYPE_6__*) ;
 scalar_t__ ngx_http_init_static_location_trees (TYPE_8__*,int *) ;
 int ngx_http_max_module ;
 char* ngx_http_merge_servers (TYPE_8__*,TYPE_6__*,TYPE_4__*,size_t) ;
 scalar_t__ ngx_http_optimize_servers (TYPE_8__*,TYPE_6__*,int ) ;
 int ngx_http_top_input_body_filter ;
 scalar_t__ ngx_http_variables_init_vars (TYPE_8__*) ;
 void* ngx_pcalloc (int ,int) ;
 TYPE_6__* stub1 (TYPE_8__*) ;
 int * stub2 (TYPE_8__*) ;
 int * stub3 (TYPE_8__*) ;
 scalar_t__ stub4 (TYPE_8__*) ;
 char* stub5 (TYPE_8__*,TYPE_6__*) ;
 scalar_t__ stub6 (TYPE_8__*) ;

__attribute__((used)) static char *
ngx_http_block(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    char *rv;
    ngx_uint_t mi, m, s;
    ngx_conf_t pcf;
    ngx_http_module_t *module;
    ngx_http_conf_ctx_t *ctx;
    ngx_http_core_loc_conf_t *clcf;
    ngx_http_core_srv_conf_t **cscfp;
    ngx_http_core_main_conf_t *cmcf;

    if (*(ngx_http_conf_ctx_t **) conf) {
        return "is duplicate";
    }



    ctx = ngx_pcalloc(cf->pool, sizeof(ngx_http_conf_ctx_t));
    if (ctx == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    *(ngx_http_conf_ctx_t **) conf = ctx;




    ngx_http_max_module = ngx_count_modules(cf->cycle, NGX_HTTP_MODULE);




    ctx->main_conf = ngx_pcalloc(cf->pool,
                                 sizeof(void *) * ngx_http_max_module);
    if (ctx->main_conf == ((void*)0)) {
        return NGX_CONF_ERROR;
    }







    ctx->srv_conf = ngx_pcalloc(cf->pool, sizeof(void *) * ngx_http_max_module);
    if (ctx->srv_conf == ((void*)0)) {
        return NGX_CONF_ERROR;
    }







    ctx->loc_conf = ngx_pcalloc(cf->pool, sizeof(void *) * ngx_http_max_module);
    if (ctx->loc_conf == ((void*)0)) {
        return NGX_CONF_ERROR;
    }







    for (m = 0; cf->cycle->modules[m]; m++) {
        if (cf->cycle->modules[m]->type != NGX_HTTP_MODULE) {
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

        if (module->create_loc_conf) {
            ctx->loc_conf[mi] = module->create_loc_conf(cf);
            if (ctx->loc_conf[mi] == ((void*)0)) {
                return NGX_CONF_ERROR;
            }
        }
    }

    pcf = *cf;
    cf->ctx = ctx;







    for (m = 0; cf->cycle->modules[m]; m++) {
        if (cf->cycle->modules[m]->type != NGX_HTTP_MODULE) {
            continue;
        }

        module = cf->cycle->modules[m]->ctx;

        if (module->preconfiguration) {
            if (module->preconfiguration(cf) != NGX_OK) {
                return NGX_CONF_ERROR;
            }
        }
    }



    cf->module_type = NGX_HTTP_MODULE;
    cf->cmd_type = NGX_HTTP_MAIN_CONF;
    rv = ngx_conf_parse(cf, ((void*)0));

    if (rv != NGX_CONF_OK) {
        goto failed;
    }






    cmcf = ctx->main_conf[ngx_http_core_module.ctx_index];
    cscfp = cmcf->servers.elts;

    for (m = 0; cf->cycle->modules[m]; m++) {
        if (cf->cycle->modules[m]->type != NGX_HTTP_MODULE) {
            continue;
        }

        module = cf->cycle->modules[m]->ctx;
        mi = cf->cycle->modules[m]->ctx_index;



        if (module->init_main_conf) {
            rv = module->init_main_conf(cf, ctx->main_conf[mi]);
            if (rv != NGX_CONF_OK) {
                goto failed;
            }
        }

        rv = ngx_http_merge_servers(cf, cmcf, module, mi);
        if (rv != NGX_CONF_OK) {
            goto failed;
        }
    }




    for (s = 0; s < cmcf->servers.nelts; s++) {

        clcf = cscfp[s]->ctx->loc_conf[ngx_http_core_module.ctx_index];

        if (ngx_http_init_locations(cf, cscfp[s], clcf) != NGX_OK) {
            return NGX_CONF_ERROR;
        }

        if (ngx_http_init_static_location_trees(cf, clcf) != NGX_OK) {
            return NGX_CONF_ERROR;
        }
    }


    if (ngx_http_init_phases(cf, cmcf) != NGX_OK) {
        return NGX_CONF_ERROR;
    }

    if (ngx_http_init_headers_in_hash(cf, cmcf) != NGX_OK) {
        return NGX_CONF_ERROR;
    }


    for (m = 0; cf->cycle->modules[m]; m++) {
        if (cf->cycle->modules[m]->type != NGX_HTTP_MODULE) {
            continue;
        }

        module = cf->cycle->modules[m]->ctx;

        if (module->postconfiguration) {
            if (module->postconfiguration(cf) != NGX_OK) {
                return NGX_CONF_ERROR;
            }
        }
    }

    if (ngx_http_variables_init_vars(cf) != NGX_OK) {
        return NGX_CONF_ERROR;
    }






    *cf = pcf;


    if (ngx_http_init_phase_handlers(cf, cmcf) != NGX_OK) {
        return NGX_CONF_ERROR;
    }




    if (ngx_http_optimize_servers(cf, cmcf, cmcf->ports) != NGX_OK) {
        return NGX_CONF_ERROR;
    }

    return NGX_CONF_OK;

failed:

    *cf = pcf;

    return rv;
}
