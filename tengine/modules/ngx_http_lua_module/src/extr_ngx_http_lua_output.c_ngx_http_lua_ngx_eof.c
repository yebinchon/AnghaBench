
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_11__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_12__ {scalar_t__ eof; scalar_t__ acquired_raw_req_socket; } ;
typedef TYPE_3__ ngx_http_lua_ctx_t ;
typedef int lua_State ;
struct TYPE_10__ {int log; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_LUA_CONTEXT_ACCESS ;
 int NGX_HTTP_LUA_CONTEXT_CONTENT ;
 int NGX_HTTP_LUA_CONTEXT_REWRITE ;
 scalar_t__ NGX_HTTP_SPECIAL_RESPONSE ;
 int NGX_LOG_DEBUG_HTTP ;
 int dd (char*,int) ;
 int luaL_error (int *,char*) ;
 scalar_t__ lua_gettop (int *) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushliteral (int *,char*) ;
 int lua_pushnil (int *) ;
 TYPE_3__* ngx_http_get_module_ctx (TYPE_2__*,int ) ;
 int ngx_http_lua_check_context (int *,TYPE_3__*,int) ;
 TYPE_2__* ngx_http_lua_get_req (int *) ;
 int ngx_http_lua_module ;
 scalar_t__ ngx_http_lua_send_chain_link (TYPE_2__*,TYPE_3__*,int *) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;

__attribute__((used)) static int
ngx_http_lua_ngx_eof(lua_State *L)
{
    ngx_http_request_t *r;
    ngx_http_lua_ctx_t *ctx;
    ngx_int_t rc;

    r = ngx_http_lua_get_req(L);
    if (r == ((void*)0)) {
        return luaL_error(L, "no request object found");
    }

    if (lua_gettop(L) != 0) {
        return luaL_error(L, "no argument is expected");
    }

    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);
    if (ctx == ((void*)0)) {
        return luaL_error(L, "no ctx found");
    }

    if (ctx->acquired_raw_req_socket) {
        lua_pushnil(L);
        lua_pushliteral(L, "raw request socket acquired");
        return 2;
    }

    if (ctx->eof) {
        lua_pushnil(L);
        lua_pushliteral(L, "seen eof");
        return 2;
    }

    ngx_http_lua_check_context(L, ctx, NGX_HTTP_LUA_CONTEXT_REWRITE
                               | NGX_HTTP_LUA_CONTEXT_ACCESS
                               | NGX_HTTP_LUA_CONTEXT_CONTENT);

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua send eof");

    rc = ngx_http_lua_send_chain_link(r, ctx, ((void*)0) );

    dd("send chain: %d", (int) rc);

    if (rc == NGX_ERROR || rc >= NGX_HTTP_SPECIAL_RESPONSE) {
        lua_pushnil(L);
        lua_pushliteral(L, "nginx output filter error");
        return 2;
    }

    lua_pushinteger(L, 1);
    return 1;
}
