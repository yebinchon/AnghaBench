
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_12__ {int co_ref; } ;
struct TYPE_11__ {scalar_t__ co_op; int exec_args; int exec_uri; int resume_handler; scalar_t__ exited; scalar_t__ exit_code; scalar_t__ entered_content_phase; scalar_t__ entered_access_phase; scalar_t__ entered_rewrite_phase; TYPE_4__ entry_co_ctx; int * user_co_ctx; } ;
typedef TYPE_3__ ngx_http_lua_ctx_t ;
typedef int ngx_http_lua_co_ctx_t ;
typedef int lua_State ;
struct TYPE_9__ {int log; } ;


 int LUA_NOREF ;
 int NGX_LOG_DEBUG_HTTP ;
 int ngx_http_lua_finalize_threads (TYPE_2__*,TYPE_3__*,int *) ;
 int ngx_http_lua_wev_handler ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_memzero (TYPE_4__*,int) ;
 int ngx_str_null (int *) ;

void
ngx_http_lua_reset_ctx(ngx_http_request_t *r, lua_State *L,
    ngx_http_lua_ctx_t *ctx)
{
    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua reset ctx");

    ngx_http_lua_finalize_threads(r, ctx, L);
    ngx_memzero(&ctx->entry_co_ctx, sizeof(ngx_http_lua_co_ctx_t));

    ctx->entry_co_ctx.co_ref = LUA_NOREF;

    ctx->entered_rewrite_phase = 0;
    ctx->entered_access_phase = 0;
    ctx->entered_content_phase = 0;

    ctx->exit_code = 0;
    ctx->exited = 0;
    ctx->resume_handler = ngx_http_lua_wev_handler;

    ngx_str_null(&ctx->exec_uri);
    ngx_str_null(&ctx->exec_args);

    ctx->co_op = 0;
}
