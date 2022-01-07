
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* handler ) (TYPE_1__*) ;int state; } ;
typedef TYPE_1__ ngx_resolver_ctx_t ;
struct TYPE_6__ {TYPE_1__* data; } ;
typedef TYPE_2__ ngx_event_t ;


 int NGX_RESOLVE_TIMEDOUT ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void
ngx_resolver_timeout_handler(ngx_event_t *ev)
{
    ngx_resolver_ctx_t *ctx;

    ctx = ev->data;

    ctx->state = NGX_RESOLVE_TIMEDOUT;

    ctx->handler(ctx);
}
