
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_11__ {TYPE_1__* connection; int header_sent; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_12__ {int header_sent; } ;
typedef TYPE_3__ ngx_http_lua_ctx_t ;
typedef int lua_State ;
struct TYPE_10__ {int log; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_LUA_CONTEXT_ACCESS ;
 int NGX_HTTP_LUA_CONTEXT_CONTENT ;
 int NGX_HTTP_LUA_CONTEXT_REWRITE ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 int luaL_error (int *,char*) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushliteral (int *,char*) ;
 int lua_pushnil (int *) ;
 TYPE_3__* ngx_http_get_module_ctx (TYPE_2__*,int ) ;
 int ngx_http_lua_check_context (int *,TYPE_3__*,int) ;
 TYPE_2__* ngx_http_lua_get_req (int *) ;
 int ngx_http_lua_module ;
 scalar_t__ ngx_http_lua_send_header_if_needed (TYPE_2__*,TYPE_3__*) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;

__attribute__((used)) static int
ngx_http_lua_ngx_send_headers(lua_State *L)
{
    ngx_int_t rc;
    ngx_http_request_t *r;
    ngx_http_lua_ctx_t *ctx;

    r = ngx_http_lua_get_req(L);
    if (r == ((void*)0)) {
        return luaL_error(L, "no request found");
    }

    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);
    if (ctx == ((void*)0)) {
        return luaL_error(L, "no ctx found");
    }

    ngx_http_lua_check_context(L, ctx, NGX_HTTP_LUA_CONTEXT_REWRITE
                               | NGX_HTTP_LUA_CONTEXT_ACCESS
                               | NGX_HTTP_LUA_CONTEXT_CONTENT);

    if (!r->header_sent && !ctx->header_sent) {
        ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "lua send headers");

        rc = ngx_http_lua_send_header_if_needed(r, ctx);
        if (rc == NGX_ERROR || rc > NGX_OK) {
            lua_pushnil(L);
            lua_pushliteral(L, "nginx output filter error");
            return 2;
        }
    }

    lua_pushinteger(L, 1);
    return 1;
}
