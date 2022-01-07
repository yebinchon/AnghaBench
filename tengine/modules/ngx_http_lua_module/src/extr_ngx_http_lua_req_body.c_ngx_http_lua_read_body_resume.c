
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_15__ {TYPE_3__* connection; } ;
typedef TYPE_1__ ngx_http_request_t ;
struct TYPE_16__ {scalar_t__ entered_content_phase; int resume_handler; } ;
typedef TYPE_2__ ngx_http_lua_ctx_t ;
struct TYPE_17__ {int log; int requests; } ;
typedef TYPE_3__ ngx_connection_t ;
typedef int lua_State ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_DONE ;
 int NGX_LOG_DEBUG_HTTP ;
 TYPE_2__* ngx_http_get_module_ctx (TYPE_1__*,int ) ;
 int ngx_http_lua_finalize_request (TYPE_1__*,scalar_t__) ;
 int * ngx_http_lua_get_lua_vm (TYPE_1__*,TYPE_2__*) ;
 int ngx_http_lua_module ;
 scalar_t__ ngx_http_lua_run_posted_threads (TYPE_3__*,int *,TYPE_1__*,TYPE_2__*,int ) ;
 scalar_t__ ngx_http_lua_run_thread (int *,TYPE_1__*,TYPE_2__*,int ) ;
 int ngx_http_lua_wev_handler ;
 int ngx_log_debug1 (int ,int ,int ,char*,scalar_t__) ;

__attribute__((used)) static ngx_int_t
ngx_http_lua_read_body_resume(ngx_http_request_t *r)
{
    lua_State *vm;
    ngx_int_t rc;
    ngx_uint_t nreqs;
    ngx_connection_t *c;
    ngx_http_lua_ctx_t *ctx;

    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);

    ctx->resume_handler = ngx_http_lua_wev_handler;

    c = r->connection;
    vm = ngx_http_lua_get_lua_vm(r, ctx);
    nreqs = c->requests;

    rc = ngx_http_lua_run_thread(vm, r, ctx, 0);

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
