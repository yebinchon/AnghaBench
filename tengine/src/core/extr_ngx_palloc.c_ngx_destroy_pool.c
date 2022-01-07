
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* next; scalar_t__ last; scalar_t__ end; } ;
struct TYPE_10__ {TYPE_1__ d; TYPE_3__* large; int log; int data; int (* handler ) (int ) ;struct TYPE_10__* next; struct TYPE_10__* cleanup; } ;
typedef TYPE_2__ ngx_pool_t ;
struct TYPE_11__ {TYPE_2__* alloc; struct TYPE_11__* next; } ;
typedef TYPE_3__ ngx_pool_large_t ;
typedef TYPE_2__ ngx_pool_cleanup_t ;


 int NGX_LOG_DEBUG_ALLOC ;
 int ngx_free (TYPE_2__*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,TYPE_2__*) ;
 int ngx_log_debug2 (int ,int ,int ,char*,TYPE_2__*,scalar_t__) ;
 int stub1 (int ) ;

void
ngx_destroy_pool(ngx_pool_t *pool)
{
    ngx_pool_t *p, *n;
    ngx_pool_large_t *l;
    ngx_pool_cleanup_t *c;

    for (c = pool->cleanup; c; c = c->next) {
        if (c->handler) {
            ngx_log_debug1(NGX_LOG_DEBUG_ALLOC, pool->log, 0,
                           "run cleanup: %p", c);
            c->handler(c->data);
        }
    }
    for (l = pool->large; l; l = l->next) {
        if (l->alloc) {
            ngx_free(l->alloc);
        }
    }

    for (p = pool, n = pool->d.next; ; p = n, n = n->d.next) {
        ngx_free(p);

        if (n == ((void*)0)) {
            break;
        }
    }
}
