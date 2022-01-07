
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_18__ {TYPE_4__* connection; int pool; } ;
typedef TYPE_1__ ngx_http_request_t ;
struct TYPE_19__ {scalar_t__ entered_content_phase; TYPE_3__* cur_co_ctx; int resume_handler; } ;
typedef TYPE_2__ ngx_http_lua_ctx_t ;
struct TYPE_20__ {scalar_t__ nsubreqs; int * sr_flags; int * sr_bodies; int * sr_headers; int * sr_statuses; } ;
typedef TYPE_3__ ngx_http_lua_co_ctx_t ;
struct TYPE_21__ {int log; int requests; } ;
typedef TYPE_4__ ngx_connection_t ;
typedef int lua_State ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_DONE ;
 scalar_t__ NGX_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 int dd (char*,...) ;
 TYPE_2__* ngx_http_get_module_ctx (TYPE_1__*,int ) ;
 int ngx_http_lua_finalize_request (TYPE_1__*,scalar_t__) ;
 int * ngx_http_lua_get_lua_vm (TYPE_1__*,TYPE_2__*) ;
 int ngx_http_lua_handle_subreq_responses (TYPE_1__*,TYPE_2__*) ;
 int ngx_http_lua_module ;
 scalar_t__ ngx_http_lua_run_posted_threads (TYPE_4__*,int *,TYPE_1__*,TYPE_2__*,int ) ;
 scalar_t__ ngx_http_lua_run_thread (int *,TYPE_1__*,TYPE_2__*,scalar_t__) ;
 int ngx_http_lua_wev_handler ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,scalar_t__) ;
 int ngx_pfree (int ,int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_lua_subrequest_resume(ngx_http_request_t *r)
{
    lua_State *vm;
    ngx_int_t rc;
    ngx_uint_t nreqs;
    ngx_connection_t *c;
    ngx_http_lua_ctx_t *ctx;
    ngx_http_lua_co_ctx_t *coctx;

    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);
    if (ctx == ((void*)0)) {
        return NGX_ERROR;
    }

    ctx->resume_handler = ngx_http_lua_wev_handler;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua run subrequests done, resuming lua thread");

    coctx = ctx->cur_co_ctx;

    dd("nsubreqs: %d", (int) coctx->nsubreqs);

    ngx_http_lua_handle_subreq_responses(r, ctx);

    dd("free sr_statues/headers/bodies memory ASAP");


    ngx_pfree(r->pool, coctx->sr_statuses);

    coctx->sr_statuses = ((void*)0);
    coctx->sr_headers = ((void*)0);
    coctx->sr_bodies = ((void*)0);
    coctx->sr_flags = ((void*)0);


    c = r->connection;
    vm = ngx_http_lua_get_lua_vm(r, ctx);
    nreqs = c->requests;

    rc = ngx_http_lua_run_thread(vm, r, ctx, coctx->nsubreqs);

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua run thread returned %d", rc);

    if (rc == NGX_AGAIN) {
        return ngx_http_lua_run_posted_threads(c, vm, r, ctx, nreqs);
    }

    if (rc == NGX_DONE) {
        ngx_http_lua_finalize_request(r, NGX_DONE);
        return ngx_http_lua_run_posted_threads(c, vm, r, ctx, nreqs);
    }



    if (ctx->entered_content_phase) {
        ngx_http_lua_finalize_request(r, rc);
        return NGX_DONE;
    }

    return rc;
}
