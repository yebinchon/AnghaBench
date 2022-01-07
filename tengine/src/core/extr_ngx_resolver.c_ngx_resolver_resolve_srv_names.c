
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_19__ ;


typedef size_t ngx_uint_t ;
struct TYPE_25__ {int valid; } ;
typedef TYPE_5__ ngx_resolver_t ;
struct TYPE_22__ {int len; int * data; } ;
struct TYPE_26__ {TYPE_8__* ctx; int port; int weight; int priority; TYPE_2__ name; } ;
typedef TYPE_6__ ngx_resolver_srv_name_t ;
struct TYPE_24__ {TYPE_3__* srvs; } ;
struct TYPE_27__ {int nsrvs; TYPE_4__ u; scalar_t__ valid; } ;
typedef TYPE_7__ ngx_resolver_node_t ;
struct TYPE_28__ {int count; int nsrvs; int (* handler ) (TYPE_8__*) ;scalar_t__ valid; scalar_t__ state; int timeout; TYPE_6__* srvs; struct TYPE_28__* data; TYPE_2__ name; TYPE_19__* event; int * node; TYPE_5__* resolver; } ;
typedef TYPE_8__ ngx_resolver_ctx_t ;
struct TYPE_21__ {int data; int len; } ;
struct TYPE_23__ {int port; int weight; int priority; TYPE_1__ name; } ;
struct TYPE_20__ {scalar_t__ timer_set; } ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 int ngx_del_timer (TYPE_19__*) ;
 int ngx_memcpy (int *,int ,int ) ;
 scalar_t__ ngx_resolve_name (TYPE_8__*) ;
 TYPE_8__* ngx_resolve_start (TYPE_5__*,int *) ;
 int * ngx_resolver_alloc (TYPE_5__*,int ) ;
 TYPE_6__* ngx_resolver_calloc (TYPE_5__*,int) ;
 int ngx_resolver_srv_names_handler (TYPE_8__*) ;
 scalar_t__ ngx_time () ;
 int stub1 (TYPE_8__*) ;

__attribute__((used)) static void
ngx_resolver_resolve_srv_names(ngx_resolver_ctx_t *ctx, ngx_resolver_node_t *rn)
{
    ngx_uint_t i;
    ngx_resolver_t *r;
    ngx_resolver_ctx_t *cctx;
    ngx_resolver_srv_name_t *srvs;

    r = ctx->resolver;

    ctx->node = ((void*)0);
    ctx->state = NGX_OK;
    ctx->valid = rn->valid;
    ctx->count = rn->nsrvs;

    srvs = ngx_resolver_calloc(r, rn->nsrvs * sizeof(ngx_resolver_srv_name_t));
    if (srvs == ((void*)0)) {
        goto failed;
    }

    ctx->srvs = srvs;
    ctx->nsrvs = rn->nsrvs;

    if (ctx->event && ctx->event->timer_set) {
        ngx_del_timer(ctx->event);
    }

    for (i = 0; i < (ngx_uint_t) rn->nsrvs; i++) {
        srvs[i].name.data = ngx_resolver_alloc(r, rn->u.srvs[i].name.len);
        if (srvs[i].name.data == ((void*)0)) {
            goto failed;
        }

        srvs[i].name.len = rn->u.srvs[i].name.len;
        ngx_memcpy(srvs[i].name.data, rn->u.srvs[i].name.data,
                   srvs[i].name.len);

        cctx = ngx_resolve_start(r, ((void*)0));
        if (cctx == ((void*)0)) {
            goto failed;
        }

        cctx->name = srvs[i].name;
        cctx->handler = ngx_resolver_srv_names_handler;
        cctx->data = ctx;
        cctx->srvs = &srvs[i];
        cctx->timeout = ctx->timeout;

        srvs[i].priority = rn->u.srvs[i].priority;
        srvs[i].weight = rn->u.srvs[i].weight;
        srvs[i].port = rn->u.srvs[i].port;
        srvs[i].ctx = cctx;

        if (ngx_resolve_name(cctx) == NGX_ERROR) {
            srvs[i].ctx = ((void*)0);
            goto failed;
        }
    }

    return;

failed:

    ctx->state = NGX_ERROR;
    ctx->valid = ngx_time() + (r->valid ? r->valid : 10);

    ctx->handler(ctx);
}
