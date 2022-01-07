
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int ngx_msec_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_13__ {int data; scalar_t__ len; } ;
struct TYPE_15__ {TYPE_2__* connection; TYPE_1__ uri; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_16__ {TYPE_5__* cur_co_ctx; } ;
typedef TYPE_4__ ngx_http_lua_ctx_t ;
struct TYPE_18__ {int delayed; int log; TYPE_5__* data; int handler; } ;
struct TYPE_17__ {TYPE_6__ sleep; TYPE_3__* data; int cleanup; } ;
typedef TYPE_5__ ngx_http_lua_co_ctx_t ;
typedef int lua_State ;
struct TYPE_14__ {int log; } ;


 int NGX_HTTP_LUA_CONTEXT_ACCESS ;
 int NGX_HTTP_LUA_CONTEXT_CONTENT ;
 int NGX_HTTP_LUA_CONTEXT_REWRITE ;
 int NGX_HTTP_LUA_CONTEXT_SSL_CERT ;
 int NGX_HTTP_LUA_CONTEXT_SSL_SESS_FETCH ;
 int NGX_HTTP_LUA_CONTEXT_TIMER ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_WARN ;
 int dd (char*,...) ;
 int luaL_checknumber (int *,int) ;
 int luaL_error (int *,char*,...) ;
 int lua_gettop (int *) ;
 int lua_yield (int *,int ) ;
 int ngx_add_timer (TYPE_6__*,int ) ;
 TYPE_4__* ngx_http_get_module_ctx (TYPE_3__*,int ) ;
 int ngx_http_lua_check_context (int *,TYPE_4__*,int) ;
 int ngx_http_lua_cleanup_pending_operation (TYPE_5__*) ;
 TYPE_3__* ngx_http_lua_get_req (int *) ;
 int ngx_http_lua_module ;
 int ngx_http_lua_sleep_cleanup ;
 int ngx_http_lua_sleep_handler ;
 int ngx_log_debug1 (int ,int ,int ,char*,scalar_t__) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int ngx_post_event (TYPE_6__*,int *) ;
 int ngx_posted_delayed_events ;

__attribute__((used)) static int
ngx_http_lua_ngx_sleep(lua_State *L)
{
    int n;
    ngx_int_t delay;
    ngx_http_request_t *r;
    ngx_http_lua_ctx_t *ctx;
    ngx_http_lua_co_ctx_t *coctx;

    n = lua_gettop(L);
    if (n != 1) {
        return luaL_error(L, "attempt to pass %d arguments, but accepted 1", n);
    }

    r = ngx_http_lua_get_req(L);
    if (r == ((void*)0)) {
        return luaL_error(L, "no request found");
    }

    delay = (ngx_int_t) (luaL_checknumber(L, 1) * 1000);

    if (delay < 0) {
        return luaL_error(L, "invalid sleep duration \"%d\"", delay);
    }

    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);
    if (ctx == ((void*)0)) {
        return luaL_error(L, "no request ctx found");
    }

    ngx_http_lua_check_context(L, ctx, NGX_HTTP_LUA_CONTEXT_REWRITE
                               | NGX_HTTP_LUA_CONTEXT_ACCESS
                               | NGX_HTTP_LUA_CONTEXT_CONTENT
                               | NGX_HTTP_LUA_CONTEXT_TIMER
                               | NGX_HTTP_LUA_CONTEXT_SSL_CERT
                               | NGX_HTTP_LUA_CONTEXT_SSL_SESS_FETCH);

    coctx = ctx->cur_co_ctx;
    if (coctx == ((void*)0)) {
        return luaL_error(L, "no co ctx found");
    }

    ngx_http_lua_cleanup_pending_operation(coctx);
    coctx->cleanup = ngx_http_lua_sleep_cleanup;
    coctx->data = r;

    coctx->sleep.handler = ngx_http_lua_sleep_handler;
    coctx->sleep.data = coctx;
    coctx->sleep.log = r->connection->log;

    if (delay == 0) {






        ngx_log_error(NGX_LOG_WARN, r->connection->log, 0, "ngx.sleep(0)"
                      " called without delayed events patch, this will"
                      " hurt performance");
        ngx_add_timer(&coctx->sleep, (ngx_msec_t) delay);


    } else {
        dd("adding timer with delay %lu ms, r:%.*s", (unsigned long) delay,
           (int) r->uri.len, r->uri.data);

        ngx_add_timer(&coctx->sleep, (ngx_msec_t) delay);
    }

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua ready to sleep for %d ms", delay);

    return lua_yield(L, 0);
}
