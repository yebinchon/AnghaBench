
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ngx_socket_t ;
struct TYPE_6__ {scalar_t__ header_sent; TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_http_request_t ;
typedef int ngx_http_lua_ctx_t ;
struct TYPE_5__ {scalar_t__ fd; } ;


 int NGX_HTTP_LUA_FFI_BAD_CONTEXT ;
 int NGX_HTTP_LUA_FFI_NO_REQ_CTX ;
 int * ngx_http_get_module_ctx (TYPE_2__*,int ) ;
 int ngx_http_lua_module ;

int
ngx_http_lua_ffi_headers_sent(ngx_http_request_t *r)
{
    ngx_http_lua_ctx_t *ctx;

    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);
    if (ctx == ((void*)0)) {
        return NGX_HTTP_LUA_FFI_NO_REQ_CTX;
    }

    if (r->connection->fd == (ngx_socket_t) -1) {
        return NGX_HTTP_LUA_FFI_BAD_CONTEXT;
    }

    return r->header_sent ? 1 : 0;
}
