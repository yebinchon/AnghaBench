
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_14__ {int request_body_in_single_buf; int request_body_in_persistent_file; int request_body_in_clean_file; TYPE_2__* connection; TYPE_1__* main; scalar_t__ request_body_file_log_level; scalar_t__ request_body_in_file_only; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_15__ {int exited; int waiting_more_body; TYPE_5__* downstream; scalar_t__ exit_code; TYPE_5__* cur_co_ctx; } ;
typedef TYPE_4__ ngx_http_lua_ctx_t ;
struct TYPE_16__ {TYPE_3__* data; int cleanup; } ;
typedef TYPE_5__ ngx_http_lua_co_ctx_t ;
typedef int lua_State ;
struct TYPE_13__ {int log; } ;
struct TYPE_12__ {scalar_t__ count; } ;


 scalar_t__ NGX_AGAIN ;
 int NGX_HTTP_LUA_CONTEXT_ACCESS ;
 int NGX_HTTP_LUA_CONTEXT_CONTENT ;
 int NGX_HTTP_LUA_CONTEXT_REWRITE ;
 scalar_t__ NGX_HTTP_SPECIAL_RESPONSE ;
 int NGX_LOG_DEBUG_HTTP ;
 int dd (char*,int) ;
 int luaL_error (int *,char*,...) ;
 int lua_gettop (int *) ;
 int lua_yield (int *,int ) ;
 TYPE_4__* ngx_http_get_module_ctx (TYPE_3__*,int ) ;
 int ngx_http_lua_check_context (int *,TYPE_4__*,int) ;
 int ngx_http_lua_cleanup_pending_operation (TYPE_5__*) ;
 TYPE_3__* ngx_http_lua_get_req (int *) ;
 int ngx_http_lua_module ;
 int ngx_http_lua_req_body_cleanup ;
 int ngx_http_lua_req_body_post_read ;
 scalar_t__ ngx_http_read_client_request_body (TYPE_3__*,int ) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,scalar_t__) ;

__attribute__((used)) static int
ngx_http_lua_ngx_req_read_body(lua_State *L)
{
    ngx_http_request_t *r;
    int n;
    ngx_int_t rc;
    ngx_http_lua_ctx_t *ctx;
    ngx_http_lua_co_ctx_t *coctx;

    n = lua_gettop(L);

    if (n != 0) {
        return luaL_error(L, "expecting 0 arguments but seen %d", n);
    }

    r = ngx_http_lua_get_req(L);
    if (r == ((void*)0)) {
        return luaL_error(L, "request object not found");
    }

    r->request_body_in_single_buf = 1;
    r->request_body_in_persistent_file = 1;
    r->request_body_in_clean_file = 1;


    if (r->request_body_in_file_only) {
        r->request_body_file_log_level = 0;
    }


    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);
    if (ctx == ((void*)0)) {
        return luaL_error(L, "no ctx found");
    }

    ngx_http_lua_check_context(L, ctx, NGX_HTTP_LUA_CONTEXT_REWRITE
                               | NGX_HTTP_LUA_CONTEXT_ACCESS
                               | NGX_HTTP_LUA_CONTEXT_CONTENT);

    coctx = ctx->cur_co_ctx;
    if (coctx == ((void*)0)) {
        return luaL_error(L, "no co ctx found");
    }

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua start to read buffered request body");

    rc = ngx_http_read_client_request_body(r, ngx_http_lua_req_body_post_read);



    r->main->count--;


    if (rc >= NGX_HTTP_SPECIAL_RESPONSE) {
        ctx->exit_code = rc;
        ctx->exited = 1;

        ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "http read client request body returned error code %i, "
                       "exitting now", rc);

        return lua_yield(L, 0);
    }







    if (rc == NGX_AGAIN) {
        ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "lua read buffered request body requires I/O "
                       "interruptions");

        ctx->waiting_more_body = 1;
        ctx->downstream = coctx;

        ngx_http_lua_cleanup_pending_operation(coctx);
        coctx->cleanup = ngx_http_lua_req_body_cleanup;
        coctx->data = r;

        return lua_yield(L, 0);
    }



    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua has read buffered request body in a single run");

    return 0;
}
