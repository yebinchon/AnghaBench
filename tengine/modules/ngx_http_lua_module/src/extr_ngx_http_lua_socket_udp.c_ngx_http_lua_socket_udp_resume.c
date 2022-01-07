
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef int ngx_int_t ;
struct TYPE_22__ {TYPE_5__* connection; } ;
typedef TYPE_1__ ngx_http_request_t ;
struct TYPE_23__ {int (* prepare_retvals ) (TYPE_1__*,TYPE_2__*,int ) ;} ;
typedef TYPE_2__ ngx_http_lua_socket_udp_upstream_t ;
struct TYPE_24__ {scalar_t__ entered_content_phase; TYPE_4__* cur_co_ctx; int resume_handler; } ;
typedef TYPE_3__ ngx_http_lua_ctx_t ;
struct TYPE_25__ {int co; TYPE_2__* data; } ;
typedef TYPE_4__ ngx_http_lua_co_ctx_t ;
struct TYPE_26__ {int log; int requests; } ;
typedef TYPE_5__ ngx_connection_t ;
typedef int lua_State ;


 int NGX_AGAIN ;
 int NGX_DONE ;
 int NGX_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 TYPE_3__* ngx_http_get_module_ctx (TYPE_1__*,int ) ;
 int ngx_http_lua_finalize_request (TYPE_1__*,int) ;
 int * ngx_http_lua_get_lua_vm (TYPE_1__*,TYPE_3__*) ;
 int ngx_http_lua_module ;
 int ngx_http_lua_probe_info (char*) ;
 int ngx_http_lua_run_posted_threads (TYPE_5__*,int *,TYPE_1__*,TYPE_3__*,int ) ;
 int ngx_http_lua_run_thread (int *,TYPE_1__*,TYPE_3__*,int) ;
 int ngx_http_lua_wev_handler ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int (*) (TYPE_1__*,TYPE_2__*,int ),TYPE_2__*) ;
 int stub1 (TYPE_1__*,TYPE_2__*,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_lua_socket_udp_resume(ngx_http_request_t *r)
{
    int nret;
    lua_State *vm;
    ngx_int_t rc;
    ngx_uint_t nreqs;
    ngx_connection_t *c;
    ngx_http_lua_ctx_t *ctx;
    ngx_http_lua_co_ctx_t *coctx;

    ngx_http_lua_socket_udp_upstream_t *u;

    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);
    if (ctx == ((void*)0)) {
        return NGX_ERROR;
    }

    ctx->resume_handler = ngx_http_lua_wev_handler;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua udp operation done, resuming lua thread");

    coctx = ctx->cur_co_ctx;





    u = coctx->data;

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua udp socket calling prepare retvals handler %p, "
                   "u:%p", u->prepare_retvals, u);

    nret = u->prepare_retvals(r, u, ctx->cur_co_ctx->co);
    if (nret == NGX_AGAIN) {
        return NGX_DONE;
    }

    c = r->connection;
    vm = ngx_http_lua_get_lua_vm(r, ctx);
    nreqs = c->requests;

    rc = ngx_http_lua_run_thread(vm, r, ctx, nret);

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
