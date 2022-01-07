
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_http_request_t ;
struct TYPE_3__ {int ctx_ref; } ;
typedef TYPE_1__ ngx_http_lua_ctx_t ;


 int NGX_HTTP_LUA_FFI_NO_REQ_CTX ;
 TYPE_1__* ngx_http_get_module_ctx (int *,int ) ;
 int ngx_http_lua_module ;

int
ngx_http_lua_ffi_get_ctx_ref(ngx_http_request_t *r)
{
    ngx_http_lua_ctx_t *ctx;

    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);
    if (ctx == ((void*)0)) {
        return NGX_HTTP_LUA_FFI_NO_REQ_CTX;
    }

    return ctx->ctx_ref;
}
