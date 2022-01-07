
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_http_request_t ;
struct TYPE_3__ {int (* resume_handler ) (int *) ;} ;
typedef TYPE_1__ ngx_http_lua_ctx_t ;


 TYPE_1__* ngx_http_get_module_ctx (int *,int ) ;
 int ngx_http_lua_module ;
 int stub1 (int *) ;

void
ngx_http_lua_content_wev_handler(ngx_http_request_t *r)
{
    ngx_http_lua_ctx_t *ctx;

    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);
    if (ctx == ((void*)0)) {
        return;
    }

    (void) ctx->resume_handler(r);
}
