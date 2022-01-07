
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int ngx_str_t ;
struct TYPE_17__ {int handler; TYPE_3__* data; } ;
typedef TYPE_2__ ngx_pool_cleanup_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_18__ {scalar_t__ host_var_index; scalar_t__ postponed_to_rewrite_phase_end; scalar_t__ postponed_to_access_phase_end; scalar_t__ (* init_handler ) (int ,TYPE_3__*,int *) ;int * lua; int requires_shm; scalar_t__ requires_body_filter; scalar_t__ requires_header_filter; scalar_t__ requires_log; scalar_t__ requires_access; scalar_t__ requires_rewrite; scalar_t__ requires_capture_filter; } ;
typedef TYPE_3__ ngx_http_lua_main_conf_t ;
typedef int ngx_http_handler_pt ;
struct TYPE_19__ {TYPE_1__* phases; } ;
typedef TYPE_4__ ngx_http_core_main_conf_t ;
typedef int ngx_cycle_t ;
struct TYPE_20__ {int log; int * cycle; int pool; } ;
typedef TYPE_5__ ngx_conf_t ;
struct TYPE_21__ {int nelts; int * elts; } ;
typedef TYPE_6__ ngx_array_t ;
struct TYPE_16__ {TYPE_6__ handlers; } ;


 scalar_t__ NGX_CONF_UNSET ;
 scalar_t__ NGX_ERROR ;
 size_t NGX_HTTP_ACCESS_PHASE ;
 size_t NGX_HTTP_LOG_PHASE ;
 size_t NGX_HTTP_REWRITE_PHASE ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 scalar_t__ NGX_PROCESS_SIGNALLER ;
 int dd (char*,...) ;
 int * ngx_array_push (TYPE_6__*) ;
 int ngx_conf_log_error (int ,TYPE_5__*,int ,char*) ;
 int volatile* ngx_cycle ;
 void* ngx_http_conf_get_module_main_conf (TYPE_5__*,int ) ;
 int ngx_http_core_module ;
 scalar_t__ ngx_http_get_variable_index (TYPE_5__*,int *) ;
 int ngx_http_lua_access_handler ;
 scalar_t__ ngx_http_lua_body_filter_init () ;
 scalar_t__ ngx_http_lua_capture_filter_init (TYPE_5__*) ;
 void* ngx_http_lua_content_length_hash ;
 void* ngx_http_lua_hash_literal (char*) ;
 scalar_t__ ngx_http_lua_header_filter_init () ;
 int * ngx_http_lua_init_vm (int *,int *,int ,TYPE_3__*,int ,int *) ;
 void* ngx_http_lua_location_hash ;
 int ngx_http_lua_log_handler ;
 int ngx_http_lua_module ;
 int ngx_http_lua_ngx_raw_header_cleanup ;
 int ngx_http_lua_pipe_init () ;
 int volatile* ngx_http_lua_prev_cycle ;
 int ngx_http_lua_rewrite_handler ;
 int ngx_http_lua_sema_mm_cleanup ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int ngx_memmove (int *,int *,int) ;
 TYPE_2__* ngx_pool_cleanup_add (int ,int ) ;
 scalar_t__ ngx_process ;
 int ngx_string (char*) ;
 scalar_t__ ngx_test_config ;
 scalar_t__ stub1 (int ,TYPE_3__*,int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_lua_init(ngx_conf_t *cf)
{
    int multi_http_blocks;
    ngx_int_t rc;
    ngx_array_t *arr;
    ngx_http_handler_pt *h;
    volatile ngx_cycle_t *saved_cycle;
    ngx_http_core_main_conf_t *cmcf;
    ngx_http_lua_main_conf_t *lmcf;

    ngx_pool_cleanup_t *cln;

    ngx_str_t name = ngx_string("host");

    if (ngx_process == NGX_PROCESS_SIGNALLER || ngx_test_config) {
        return NGX_OK;
    }

    lmcf = ngx_http_conf_get_module_main_conf(cf, ngx_http_lua_module);

    lmcf->host_var_index = ngx_http_get_variable_index(cf, &name);
    if (lmcf->host_var_index == NGX_ERROR) {
        return NGX_ERROR;
    }

    if (ngx_http_lua_prev_cycle != ngx_cycle) {
        ngx_http_lua_prev_cycle = ngx_cycle;
        multi_http_blocks = 0;

    } else {
        multi_http_blocks = 1;
    }

    if (multi_http_blocks || lmcf->requires_capture_filter) {
        rc = ngx_http_lua_capture_filter_init(cf);
        if (rc != NGX_OK) {
            return rc;
        }
    }

    if (lmcf->postponed_to_rewrite_phase_end == NGX_CONF_UNSET) {
        lmcf->postponed_to_rewrite_phase_end = 0;
    }

    if (lmcf->postponed_to_access_phase_end == NGX_CONF_UNSET) {
        lmcf->postponed_to_access_phase_end = 0;
    }

    cmcf = ngx_http_conf_get_module_main_conf(cf, ngx_http_core_module);

    if (lmcf->requires_rewrite) {
        h = ngx_array_push(&cmcf->phases[NGX_HTTP_REWRITE_PHASE].handlers);
        if (h == ((void*)0)) {
            return NGX_ERROR;
        }

        *h = ngx_http_lua_rewrite_handler;
    }

    if (lmcf->requires_access) {
        h = ngx_array_push(&cmcf->phases[NGX_HTTP_ACCESS_PHASE].handlers);
        if (h == ((void*)0)) {
            return NGX_ERROR;
        }

        *h = ngx_http_lua_access_handler;
    }

    dd("requires log: %d", (int) lmcf->requires_log);

    if (lmcf->requires_log) {
        arr = &cmcf->phases[NGX_HTTP_LOG_PHASE].handlers;
        h = ngx_array_push(arr);
        if (h == ((void*)0)) {
            return NGX_ERROR;
        }

        if (arr->nelts > 1) {
            h = arr->elts;
            ngx_memmove(&h[1], h,
                        (arr->nelts - 1) * sizeof(ngx_http_handler_pt));
        }

        *h = ngx_http_lua_log_handler;
    }

    if (multi_http_blocks || lmcf->requires_header_filter) {
        rc = ngx_http_lua_header_filter_init();
        if (rc != NGX_OK) {
            return rc;
        }
    }

    if (multi_http_blocks || lmcf->requires_body_filter) {
        rc = ngx_http_lua_body_filter_init();
        if (rc != NGX_OK) {
            return rc;
        }
    }



    cln = ngx_pool_cleanup_add(cf->pool, 0);
    if (cln == ((void*)0)) {
        return NGX_ERROR;
    }

    cln->data = lmcf;
    cln->handler = ngx_http_lua_sema_mm_cleanup;
    if (lmcf->lua == ((void*)0)) {
        dd("initializing lua vm");


        if (ngx_process != NGX_PROCESS_SIGNALLER && !ngx_test_config) {
            ngx_log_error(NGX_LOG_ALERT, cf->log, 0,
                          "detected a LuaJIT version which is not OpenResty's"
                          "; many optimizations will be disabled and "
                          "performance will be compromised (see "
                          "https://github.com/openresty/luajit2 for "
                          "OpenResty's LuaJIT or, even better, consider using "
                          "the OpenResty releases from https://openresty.org/"
                          "en/download.html)");
        }


        ngx_http_lua_content_length_hash =
                                  ngx_http_lua_hash_literal("content-length");
        ngx_http_lua_location_hash = ngx_http_lua_hash_literal("location");

        lmcf->lua = ngx_http_lua_init_vm(((void*)0), cf->cycle, cf->pool, lmcf,
                                         cf->log, ((void*)0));
        if (lmcf->lua == ((void*)0)) {
            ngx_conf_log_error(NGX_LOG_ERR, cf, 0,
                               "failed to initialize Lua VM");
            return NGX_ERROR;
        }

        if (!lmcf->requires_shm && lmcf->init_handler) {
            saved_cycle = ngx_cycle;
            ngx_cycle = cf->cycle;

            rc = lmcf->init_handler(cf->log, lmcf, lmcf->lua);

            ngx_cycle = saved_cycle;

            if (rc != NGX_OK) {

                return NGX_ERROR;
            }
        }

        dd("Lua VM initialized!");
    }

    return NGX_OK;
}
