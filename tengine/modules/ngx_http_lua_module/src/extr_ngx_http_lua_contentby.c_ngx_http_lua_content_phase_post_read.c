
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* main; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_11__ {int read_body_done; scalar_t__ waiting_more_body; } ;
typedef TYPE_3__ ngx_http_lua_ctx_t ;
struct TYPE_9__ {int count; } ;


 TYPE_3__* ngx_http_get_module_ctx (TYPE_2__*,int ) ;
 int ngx_http_lua_content_handler (TYPE_2__*) ;
 int ngx_http_lua_finalize_request (TYPE_2__*,int ) ;
 int ngx_http_lua_module ;

__attribute__((used)) static void
ngx_http_lua_content_phase_post_read(ngx_http_request_t *r)
{
    ngx_http_lua_ctx_t *ctx;

    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);

    ctx->read_body_done = 1;

    if (ctx->waiting_more_body) {
        ctx->waiting_more_body = 0;
        ngx_http_lua_finalize_request(r, ngx_http_lua_content_handler(r));

    } else {
        r->main->count--;
    }
}
