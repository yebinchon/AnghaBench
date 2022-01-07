
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int log; } ;
typedef TYPE_1__ ngx_resolver_t ;
struct TYPE_9__ {scalar_t__ timeout; int ident; TYPE_5__* event; int cancelable; } ;
typedef TYPE_2__ ngx_resolver_ctx_t ;
typedef int ngx_int_t ;
typedef int ngx_event_t ;
struct TYPE_10__ {int cancelable; int log; TYPE_2__* data; int handler; } ;


 int NGX_ERROR ;
 int NGX_OK ;
 int ngx_add_timer (TYPE_5__*,scalar_t__) ;
 TYPE_5__* ngx_resolver_calloc (TYPE_1__*,int) ;
 int ngx_resolver_timeout_handler ;

__attribute__((used)) static ngx_int_t
ngx_resolver_set_timeout(ngx_resolver_t *r, ngx_resolver_ctx_t *ctx)
{
    if (ctx->event || ctx->timeout == 0) {
        return NGX_OK;
    }

    ctx->event = ngx_resolver_calloc(r, sizeof(ngx_event_t));
    if (ctx->event == ((void*)0)) {
        return NGX_ERROR;
    }

    ctx->event->handler = ngx_resolver_timeout_handler;
    ctx->event->data = ctx;
    ctx->event->log = r->log;
    ctx->event->cancelable = ctx->cancelable;
    ctx->ident = -1;

    ngx_add_timer(ctx->event, ctx->timeout);

    return NGX_OK;
}
