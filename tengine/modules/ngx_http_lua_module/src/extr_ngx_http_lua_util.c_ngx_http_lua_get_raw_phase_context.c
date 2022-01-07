
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_http_request_t ;
struct TYPE_3__ {scalar_t__ context; } ;
typedef TYPE_1__ ngx_http_lua_ctx_t ;
typedef int lua_State ;


 int * lua_getexdata (int *) ;
 int lua_pushinteger (int *,int) ;
 int * lua_touserdata (int *,int) ;
 TYPE_1__* ngx_http_get_module_ctx (int *,int ) ;
 int ngx_http_lua_module ;

__attribute__((used)) static int
ngx_http_lua_get_raw_phase_context(lua_State *L)
{
    ngx_http_request_t *r;
    ngx_http_lua_ctx_t *ctx;




    r = lua_touserdata(L, 1);


    if (r == ((void*)0)) {
        return 0;
    }

    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);
    if (ctx == ((void*)0)) {
        return 0;
    }

    lua_pushinteger(L, (int) ctx->context);
    return 1;
}
