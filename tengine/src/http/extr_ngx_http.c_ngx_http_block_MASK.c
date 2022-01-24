#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_45__   TYPE_8__ ;
typedef  struct TYPE_44__   TYPE_7__ ;
typedef  struct TYPE_43__   TYPE_6__ ;
typedef  struct TYPE_42__   TYPE_5__ ;
typedef  struct TYPE_41__   TYPE_4__ ;
typedef  struct TYPE_40__   TYPE_3__ ;
typedef  struct TYPE_39__   TYPE_34__ ;
typedef  struct TYPE_38__   TYPE_32__ ;
typedef  struct TYPE_37__   TYPE_2__ ;
typedef  struct TYPE_36__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ngx_uint_t ;
struct TYPE_41__ {scalar_t__ (* preconfiguration ) (TYPE_8__*) ;char* (* init_main_conf ) (TYPE_8__*,TYPE_6__*) ;scalar_t__ (* postconfiguration ) (TYPE_8__*) ;int /*<<< orphan*/ * (* create_loc_conf ) (TYPE_8__*) ;int /*<<< orphan*/ * (* create_srv_conf ) (TYPE_8__*) ;TYPE_6__* (* create_main_conf ) (TYPE_8__*) ;} ;
typedef  TYPE_4__ ngx_http_module_t ;
struct TYPE_42__ {TYPE_1__* ctx; } ;
typedef  TYPE_5__ ngx_http_core_srv_conf_t ;
struct TYPE_37__ {size_t nelts; TYPE_5__** elts; } ;
struct TYPE_43__ {int /*<<< orphan*/  ports; TYPE_2__ servers; } ;
typedef  TYPE_6__ ngx_http_core_main_conf_t ;
typedef  int /*<<< orphan*/  ngx_http_core_loc_conf_t ;
struct TYPE_44__ {TYPE_6__** main_conf; int /*<<< orphan*/ ** loc_conf; int /*<<< orphan*/ ** srv_conf; } ;
typedef  TYPE_7__ ngx_http_conf_ctx_t ;
struct TYPE_45__ {TYPE_34__* cycle; int /*<<< orphan*/  cmd_type; scalar_t__ module_type; TYPE_7__* ctx; int /*<<< orphan*/  pool; } ;
typedef  TYPE_8__ ngx_conf_t ;
typedef  int /*<<< orphan*/  ngx_command_t ;
struct TYPE_40__ {scalar_t__ type; size_t ctx_index; TYPE_4__* ctx; } ;
struct TYPE_39__ {TYPE_3__** modules; } ;
struct TYPE_38__ {size_t ctx_index; } ;
struct TYPE_36__ {int /*<<< orphan*/ ** loc_conf; } ;

/* Variables and functions */
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 int /*<<< orphan*/  NGX_HTTP_MAIN_CONF ; 
 scalar_t__ NGX_HTTP_MODULE ; 
 scalar_t__ NGX_OK ; 
 char* FUNC0 (TYPE_8__*,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_34__*,scalar_t__) ; 
 TYPE_32__ ngx_http_core_module ; 
 int /*<<< orphan*/  ngx_http_dummy_input_body_filter ; 
 scalar_t__ FUNC2 (TYPE_8__*,TYPE_6__*) ; 
 scalar_t__ FUNC3 (TYPE_8__*,TYPE_5__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_8__*,TYPE_6__*) ; 
 scalar_t__ FUNC5 (TYPE_8__*,TYPE_6__*) ; 
 scalar_t__ FUNC6 (TYPE_8__*,int /*<<< orphan*/ *) ; 
 int ngx_http_max_module ; 
 char* FUNC7 (TYPE_8__*,TYPE_6__*,TYPE_4__*,size_t) ; 
 scalar_t__ FUNC8 (TYPE_8__*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_top_input_body_filter ; 
 scalar_t__ FUNC9 (TYPE_8__*) ; 
 void* FUNC10 (int /*<<< orphan*/ ,int) ; 
 TYPE_6__* FUNC11 (TYPE_8__*) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_8__*) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_8__*) ; 
 scalar_t__ FUNC14 (TYPE_8__*) ; 
 char* FUNC15 (TYPE_8__*,TYPE_6__*) ; 
 scalar_t__ FUNC16 (TYPE_8__*) ; 

__attribute__((used)) static char *
FUNC17(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    char                        *rv;
    ngx_uint_t                   mi, m, s;
    ngx_conf_t                   pcf;
    ngx_http_module_t           *module;
    ngx_http_conf_ctx_t         *ctx;
    ngx_http_core_loc_conf_t    *clcf;
    ngx_http_core_srv_conf_t   **cscfp;
    ngx_http_core_main_conf_t   *cmcf;

    if (*(ngx_http_conf_ctx_t **) conf) {
        return "is duplicate";
    }

    /* the main http context */

    ctx = FUNC10(cf->pool, sizeof(ngx_http_conf_ctx_t));
    if (ctx == NULL) {
        return NGX_CONF_ERROR;
    }

    *(ngx_http_conf_ctx_t **) conf = ctx;


    /* count the number of the http modules and set up their indices */

    ngx_http_max_module = FUNC1(cf->cycle, NGX_HTTP_MODULE);


    /* the http main_conf context, it is the same in the all http contexts */

    ctx->main_conf = FUNC10(cf->pool,
                                 sizeof(void *) * ngx_http_max_module);
    if (ctx->main_conf == NULL) {
        return NGX_CONF_ERROR;
    }


    /*
     * the http null srv_conf context, it is used to merge
     * the server{}s' srv_conf's
     */

    ctx->srv_conf = FUNC10(cf->pool, sizeof(void *) * ngx_http_max_module);
    if (ctx->srv_conf == NULL) {
        return NGX_CONF_ERROR;
    }


    /*
     * the http null loc_conf context, it is used to merge
     * the server{}s' loc_conf's
     */

    ctx->loc_conf = FUNC10(cf->pool, sizeof(void *) * ngx_http_max_module);
    if (ctx->loc_conf == NULL) {
        return NGX_CONF_ERROR;
    }


    /*
     * create the main_conf's, the null srv_conf's, and the null loc_conf's
     * of the all http modules
     */

    for (m = 0; cf->cycle->modules[m]; m++) {
        if (cf->cycle->modules[m]->type != NGX_HTTP_MODULE) {
            continue;
        }

        module = cf->cycle->modules[m]->ctx;
        mi = cf->cycle->modules[m]->ctx_index;

        if (module->create_main_conf) {
            ctx->main_conf[mi] = module->create_main_conf(cf);
            if (ctx->main_conf[mi] == NULL) {
                return NGX_CONF_ERROR;
            }
        }

        if (module->create_srv_conf) {
            ctx->srv_conf[mi] = module->create_srv_conf(cf);
            if (ctx->srv_conf[mi] == NULL) {
                return NGX_CONF_ERROR;
            }
        }

        if (module->create_loc_conf) {
            ctx->loc_conf[mi] = module->create_loc_conf(cf);
            if (ctx->loc_conf[mi] == NULL) {
                return NGX_CONF_ERROR;
            }
        }
    }

    pcf = *cf;
    cf->ctx = ctx;

#if (T_NGX_INPUT_BODY_FILTER)
    /* init input body filter pointer */

    ngx_http_top_input_body_filter = ngx_http_dummy_input_body_filter;
#endif

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

    /* parse inside the http{} block */

    cf->module_type = NGX_HTTP_MODULE;
    cf->cmd_type = NGX_HTTP_MAIN_CONF;
    rv = FUNC0(cf, NULL);

    if (rv != NGX_CONF_OK) {
        goto failed;
    }

    /*
     * init http{} main_conf's, merge the server{}s' srv_conf's
     * and its location{}s' loc_conf's
     */

    cmcf = ctx->main_conf[ngx_http_core_module.ctx_index];
    cscfp = cmcf->servers.elts;

    for (m = 0; cf->cycle->modules[m]; m++) {
        if (cf->cycle->modules[m]->type != NGX_HTTP_MODULE) {
            continue;
        }

        module = cf->cycle->modules[m]->ctx;
        mi = cf->cycle->modules[m]->ctx_index;

        /* init http{} main_conf's */

        if (module->init_main_conf) {
            rv = module->init_main_conf(cf, ctx->main_conf[mi]);
            if (rv != NGX_CONF_OK) {
                goto failed;
            }
        }

        rv = FUNC7(cf, cmcf, module, mi);
        if (rv != NGX_CONF_OK) {
            goto failed;
        }
    }


    /* create location trees */

    for (s = 0; s < cmcf->servers.nelts; s++) {

        clcf = cscfp[s]->ctx->loc_conf[ngx_http_core_module.ctx_index];

        if (FUNC3(cf, cscfp[s], clcf) != NGX_OK) {
            return NGX_CONF_ERROR;
        }

        if (FUNC6(cf, clcf) != NGX_OK) {
            return NGX_CONF_ERROR;
        }
    }


    if (FUNC5(cf, cmcf) != NGX_OK) {
        return NGX_CONF_ERROR;
    }

    if (FUNC2(cf, cmcf) != NGX_OK) {
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

    if (FUNC9(cf) != NGX_OK) {
        return NGX_CONF_ERROR;
    }

    /*
     * http{}'s cf->ctx was needed while the configuration merging
     * and in postconfiguration process
     */

    *cf = pcf;


    if (FUNC4(cf, cmcf) != NGX_OK) {
        return NGX_CONF_ERROR;
    }


    /* optimize the lists of ports, addresses and server names */

    if (FUNC8(cf, cmcf, cmcf->ports) != NGX_OK) {
        return NGX_CONF_ERROR;
    }

    return NGX_CONF_OK;

failed:

    *cf = pcf;

    return rv;
}