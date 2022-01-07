
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_16__ {TYPE_4__* connection; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_17__ {scalar_t__ entered_content_phase; TYPE_1__* cur_co_ctx; } ;
typedef TYPE_3__ ngx_http_lua_ctx_t ;
struct TYPE_18__ {int log; int requests; scalar_t__ error; scalar_t__ timedout; } ;
typedef TYPE_4__ ngx_connection_t ;
typedef int lua_State ;
struct TYPE_15__ {int co; int * cleanup; } ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_DONE ;
 int NGX_LOG_DEBUG_HTTP ;
 int lua_pushinteger (int ,int) ;
 int lua_pushliteral (int ,char*) ;
 int lua_pushnil (int ) ;
 int ngx_http_lua_finalize_request (TYPE_2__*,scalar_t__) ;
 int * ngx_http_lua_get_lua_vm (TYPE_2__*,TYPE_3__*) ;
 scalar_t__ ngx_http_lua_run_posted_threads (TYPE_4__*,int *,TYPE_2__*,TYPE_3__*,int ) ;
 scalar_t__ ngx_http_lua_run_thread (int *,TYPE_2__*,TYPE_3__*,int) ;
 int ngx_log_debug1 (int ,int ,int ,char*,scalar_t__) ;

ngx_int_t
ngx_http_lua_flush_resume_helper(ngx_http_request_t *r, ngx_http_lua_ctx_t *ctx)
{
    int n;
    lua_State *vm;
    ngx_int_t rc;
    ngx_uint_t nreqs;
    ngx_connection_t *c;

    c = r->connection;

    ctx->cur_co_ctx->cleanup = ((void*)0);



    if (c->timedout) {
        lua_pushnil(ctx->cur_co_ctx->co);
        lua_pushliteral(ctx->cur_co_ctx->co, "timeout");
        n = 2;

    } else if (c->error) {
        lua_pushnil(ctx->cur_co_ctx->co);
        lua_pushliteral(ctx->cur_co_ctx->co, "client aborted");
        n = 2;

    } else {
        lua_pushinteger(ctx->cur_co_ctx->co, 1);
        n = 1;
    }

    vm = ngx_http_lua_get_lua_vm(r, ctx);
    nreqs = c->requests;

    rc = ngx_http_lua_run_thread(vm, r, ctx, n);

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
