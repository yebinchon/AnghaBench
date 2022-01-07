
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int log; TYPE_2__* cleanup; } ;
typedef TYPE_1__ ngx_pool_t ;
struct TYPE_8__ {struct TYPE_8__* next; int * handler; int * data; } ;
typedef TYPE_2__ ngx_pool_cleanup_t ;


 int NGX_LOG_DEBUG_ALLOC ;
 int ngx_log_debug1 (int ,int ,int ,char*,TYPE_2__*) ;
 void* ngx_palloc (TYPE_1__*,size_t) ;

ngx_pool_cleanup_t *
ngx_pool_cleanup_add(ngx_pool_t *p, size_t size)
{
    ngx_pool_cleanup_t *c;

    c = ngx_palloc(p, sizeof(ngx_pool_cleanup_t));
    if (c == ((void*)0)) {
        return ((void*)0);
    }

    if (size) {
        c->data = ngx_palloc(p, size);
        if (c->data == ((void*)0)) {
            return ((void*)0);
        }

    } else {
        c->data = ((void*)0);
    }

    c->handler = ((void*)0);
    c->next = p->cleanup;

    p->cleanup = c;

    ngx_log_debug1(NGX_LOG_DEBUG_ALLOC, p->log, 0, "add cleanup: %p", c);

    return c;
}
