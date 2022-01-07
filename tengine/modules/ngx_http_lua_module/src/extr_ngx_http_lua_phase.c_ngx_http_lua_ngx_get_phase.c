
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_http_request_t ;
struct TYPE_3__ {int context; } ;
typedef TYPE_1__ ngx_http_lua_ctx_t ;
typedef int lua_State ;
 int luaL_error (int *,char*,...) ;
 int lua_pushliteral (int *,char*) ;
 TYPE_1__* ngx_http_get_module_ctx (int *,int ) ;
 int * ngx_http_lua_get_req (int *) ;
 int ngx_http_lua_module ;

__attribute__((used)) static int
ngx_http_lua_ngx_get_phase(lua_State *L)
{
    ngx_http_request_t *r;
    ngx_http_lua_ctx_t *ctx;

    r = ngx_http_lua_get_req(L);




    if (r == ((void*)0)) {
        lua_pushliteral(L, "init");
        return 1;
    }

    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);
    if (ctx == ((void*)0)) {
        return luaL_error(L, "no request ctx found");
    }

    switch (ctx->context) {
    case 135:
        lua_pushliteral(L, "init_worker");
        break;

    case 132:
        lua_pushliteral(L, "set");
        break;

    case 133:
        lua_pushliteral(L, "rewrite");
        break;

    case 140:
        lua_pushliteral(L, "access");
        break;

    case 137:
        lua_pushliteral(L, "content");
        break;

    case 134:
        lua_pushliteral(L, "log");
        break;

    case 136:
        lua_pushliteral(L, "header_filter");
        break;

    case 138:
        lua_pushliteral(L, "body_filter");
        break;

    case 128:
        lua_pushliteral(L, "timer");
        break;

    case 139:
        lua_pushliteral(L, "balancer");
        break;

    case 131:
        lua_pushliteral(L, "ssl_cert");
        break;

    case 129:
        lua_pushliteral(L, "ssl_session_store");
        break;

    case 130:
        lua_pushliteral(L, "ssl_session_fetch");
        break;

    default:
        return luaL_error(L, "unknown phase: %#x", (int) ctx->context);
    }

    return 1;
}
