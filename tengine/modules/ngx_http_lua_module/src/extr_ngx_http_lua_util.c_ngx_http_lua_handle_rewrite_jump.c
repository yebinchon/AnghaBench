
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


typedef int ngx_int_t ;
struct TYPE_15__ {scalar_t__ filter_finalize; int args; int uri; TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_16__ {TYPE_12__* cur_co_ctx; } ;
typedef TYPE_3__ ngx_http_lua_ctx_t ;
typedef int lua_State ;
struct TYPE_14__ {int log; } ;
struct TYPE_13__ {int co_status; int co; } ;


 int NGX_HTTP_LUA_CO_DEAD ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_OK ;
 int ngx_http_lua_cleanup_pending_operation (TYPE_12__*) ;
 int ngx_http_lua_init_ctx (TYPE_2__*,TYPE_3__*) ;
 int ngx_http_lua_module ;
 int ngx_http_lua_probe_coroutine_done (TYPE_2__*,int ,int) ;
 int ngx_http_lua_request_cleanup (TYPE_3__*,int) ;
 int ngx_http_set_ctx (TYPE_2__*,TYPE_3__*,int ) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int *,int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_lua_handle_rewrite_jump(lua_State *L, ngx_http_request_t *r,
    ngx_http_lua_ctx_t *ctx)
{
    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua thread aborting request with URI rewrite jump: "
                   "\"%V?%V\"", &r->uri, &r->args);

    ngx_http_lua_cleanup_pending_operation(ctx->cur_co_ctx);

    ngx_http_lua_probe_coroutine_done(r, ctx->cur_co_ctx->co, 1);

    ctx->cur_co_ctx->co_status = NGX_HTTP_LUA_CO_DEAD;

    if (r->filter_finalize) {
        ngx_http_set_ctx(r, ctx, ngx_http_lua_module);
    }

    ngx_http_lua_request_cleanup(ctx, 1 );
    ngx_http_lua_init_ctx(r, ctx);

    return NGX_OK;
}
