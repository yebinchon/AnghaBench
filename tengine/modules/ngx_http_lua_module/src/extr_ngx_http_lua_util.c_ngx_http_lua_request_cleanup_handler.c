
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_http_lua_ctx_t ;


 int ngx_http_lua_request_cleanup (int *,int ) ;

void
ngx_http_lua_request_cleanup_handler(void *data)
{
    ngx_http_lua_ctx_t *ctx = data;

    ngx_http_lua_request_cleanup(ctx, 0 );
}
