
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ keepalive; TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_10__ {scalar_t__ waiting_more_body; } ;
typedef TYPE_3__ ngx_http_lua_ctx_t ;
struct TYPE_11__ {TYPE_2__* data; } ;
typedef TYPE_4__ ngx_http_lua_co_ctx_t ;
struct TYPE_12__ {scalar_t__ timer_set; } ;
struct TYPE_8__ {TYPE_7__* read; } ;


 int ngx_del_timer (TYPE_7__*) ;
 TYPE_3__* ngx_http_get_module_ctx (TYPE_2__*,int ) ;
 int ngx_http_lua_module ;

__attribute__((used)) static void
ngx_http_lua_req_body_cleanup(void *data)
{
    ngx_http_request_t *r;
    ngx_http_lua_ctx_t *ctx;
    ngx_http_lua_co_ctx_t *coctx = data;

    r = coctx->data;
    if (r == ((void*)0)) {
        return;
    }

    if (r->connection->read->timer_set) {
        ngx_del_timer(r->connection->read);
    }

    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);
    if (ctx == ((void*)0)) {
        return;
    }

    ctx->waiting_more_body = 0;
    r->keepalive = 0;
}
